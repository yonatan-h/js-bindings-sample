// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

import 'filesystem_api.dart';
import 'generate_bindings.dart';
import 'util.dart';

// Generates DOM bindings for Dart.

// TODO(joshualitt): Use static interop methods for JSArray and JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// probably involve parsing the TC39 spec.

void main(List<String> args) async {
  var languageVersionString = const String.fromEnvironment('languageVersion');
  if (languageVersionString.isEmpty) {
    languageVersionString = DartFormatter.latestLanguageVersion.toString();
  }
  final ArgResults argResult;
  argResult = _parser.parse(args);

  // Double check arguments for safety even if
  // update_bindings.dart already validates them
  final idlFile = argResult['idl'] as String?;
  if (idlFile != null && p.extension(idlFile) != '.idl') {
    throw ArgumentError('Invalid file "$idlFile", must have .idl extension');
  }
  final rootImportFile = argResult['import-file'] as String;
  if (p.extension(rootImportFile) != '.dart') {
    throw ArgumentError(
        'Invalid file "$rootImportFile", must have .dart extension');
  }
  final outputSubdir = argResult['output-subdir'] as String;
  if (p.split(outputSubdir).length > 1) {
    throw ArgumentError(
        'Invalid subdirectory "$outputSubdir", must not contain a path');
  }

  await _generateAndWriteBindings(
      outputDirectory: argResult['output-directory'] as String,
      outputSubDirectory: outputSubdir,
      considerAll: argResult['consider-all'] as bool,
      languageVersion: Version.parse(languageVersionString),
      idlFile: idlFile,
      rootImportFile: argResult['import-file'] as String);
}

Future<void> _generateAndWriteBindings({
  required String outputDirectory,
  required String outputSubDirectory,
  required bool considerAll,
  required Version languageVersion,
  required String rootImportFile,
  String? idlFile,
}) async {
  //use p.join to ensure the path is valid in all platforms
  ensureDirectoryExists(p.join(outputDirectory, outputSubDirectory));

  final bindings = await generateBindings(
      packageRoot, outputSubDirectory, rootImportFile,
      considerAll: considerAll, idlFile: idlFile);

  for (var entry in bindings.entries) {
    final libraryPath = entry.key;
    final library = entry.value;

    final contents = _emitLibrary(library, languageVersion).toJS;
    fs.writeFileSync(p.join(outputDirectory, libraryPath).toJS, contents);
  }
}

String _emitLibrary(code.Library library, Version languageVersion) {
  final emitter = code.DartEmitter(
    allocator: code.Allocator(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  final source = library.accept(emitter);
  return DartFormatter(languageVersion: languageVersion)
      .format(source.toString());
}

final _parser = ArgParser()
  ..addOption('output-directory',
      mandatory: true, help: 'Directory where bindings will be generated to.')

  // Mirror the flags from update_bindings.dart as much as possible
  // to maintain consistency across the CLI tools
  ..addOption('output-subdir',
      mandatory: true,
      help:
          'The subdirectory name inside the output directory where the bindings will be generated to. Note that its no a path.',
      valueHelp: 'dom')
  ..addOption('import-file',
      mandatory: true,
      help:
          'The name of the file that exports all bindings inside the --output-subdir. This file will be generated in the output directory.',
      valueHelp: 'dom.dart')
  ..addFlag('consider-all',
      negatable: false,
      help:
          'Allow non-standard/experimental api definitions to be also be used when generating bindings')
  ..addOption('idl',
      help:
          'Generate bindings for an IDL file and its dependencies. Choose file name from https://github.com/w3c/webref/tree/main/ed/idl',
      valueHelp: 'file.idl');
