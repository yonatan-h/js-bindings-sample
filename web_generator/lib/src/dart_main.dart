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

  //Double check the file extension here even if update_bindings.dart
  //validates it
  final idlFile = argResult['idl'] as String?;
  if (idlFile != null && p.extension(idlFile) != '.idl') {
    throw ArgumentError('Invalid file "$idlFile", must have .idl extension');
  }

  await _generateAndWriteBindings(
    outputDirectory: argResult['output-directory'] as String,
    considerAll: argResult['consider-all'] as bool,
    languageVersion: Version.parse(languageVersionString),
    idlFile: idlFile,
  );
}

Future<void> _generateAndWriteBindings({
  required String outputDirectory,
  required bool considerAll,
  required Version languageVersion,
  String? idlFile,
}) async {
  // Choose output directory based on if we are generating bindings for an
  // specific IDL file or not.
  final librarySubDir = idlFile == null ? 'dom' : 'specific_bindings';

  ensureDirectoryExists('$outputDirectory/$librarySubDir');

  final bindings = await generateBindings(packageRoot, librarySubDir,
      considerAll: considerAll, idlFile: idlFile);

  for (var entry in bindings.entries) {
    final libraryPath = entry.key;
    final library = entry.value;

    final contents = _emitLibrary(library, languageVersion).toJS;
    fs.writeFileSync('$outputDirectory/$libraryPath'.toJS, contents);
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

  // Mirror the flags from update_bindings.dart to maintain consistency across
  // the CLI tools
  ..addFlag('consider-all',
      negatable: false,
      help:
          'Allow non-standard/experimental api definitions to be also be used when generating bindings')
  ..addOption('idl',
      abbr: 'i',
      help:
          'Generate bindings for an IDL file and its dependencies. Choose file name from https://github.com/w3c/webref/tree/main/ed/idl',
      valueHelp: 'file.idl');
