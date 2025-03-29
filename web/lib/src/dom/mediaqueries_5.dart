// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

extension type PreferenceManager._(JSObject _) implements JSObject {
  external PreferenceObject get colorScheme;
  external PreferenceObject get contrast;
  external PreferenceObject get reducedMotion;
  external PreferenceObject get reducedTransparency;
  external PreferenceObject get reducedData;
}
extension type PreferenceObject._(JSObject _) implements EventTarget, JSObject {
  external void clearOverride();
  external JSPromise<JSAny?> requestOverride(String? value);
  external String? get override;
  external String get value;
  external JSArray<JSString> get validValues;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}
