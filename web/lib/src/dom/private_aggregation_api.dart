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

import 'turtledove.dart';

extension type PrivateAggregation._(JSObject _) implements JSObject {
  external void contributeToHistogram(PAHistogramContribution contribution);
  external void enableDebugMode([PADebugModeOptions options]);
  external void contributeToHistogramOnEvent(
    String event,
    PAExtendedHistogramContribution contribution,
  );
}
extension type PAHistogramContribution._(JSObject _) implements JSObject {
  external factory PAHistogramContribution({
    required JSBigInt bucket,
    required int value,
    JSBigInt filteringId,
  });

  external JSBigInt get bucket;
  external set bucket(JSBigInt value);
  external int get value;
  external set value(int value);
  external JSBigInt get filteringId;
  external set filteringId(JSBigInt value);
}
extension type PADebugModeOptions._(JSObject _) implements JSObject {
  external factory PADebugModeOptions({required JSBigInt debugKey});

  external JSBigInt get debugKey;
  external set debugKey(JSBigInt value);
}
