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

typedef PrivateAttributionLogic = String;
extension type PrivateAttributionAggregationService._(JSObject _)
    implements JSObject {
  external factory PrivateAttributionAggregationService({
    required String url,
    required String protocol,
  });

  external String get url;
  external set url(String value);
  external String get protocol;
  external set protocol(String value);
}
extension type PrivateAttributionAggregationServices._(JSObject _)
    implements JSObject {}
extension type PrivateAttribution._(JSObject _) implements JSObject {
  external void saveImpression(PrivateAttributionImpressionOptions options);
  external JSPromise<PrivateAttributionConversionResult> measureConversion(
      PrivateAttributionConversionOptions options);
  external PrivateAttributionAggregationServices get aggregationServices;
}
extension type PrivateAttributionImpressionOptions._(JSObject _)
    implements JSObject {
  external factory PrivateAttributionImpressionOptions({
    required int histogramIndex,
    int filterData,
    required String conversionSite,
    int lifetimeDays,
  });

  external int get histogramIndex;
  external set histogramIndex(int value);
  external int get filterData;
  external set filterData(int value);
  external String get conversionSite;
  external set conversionSite(String value);
  external int get lifetimeDays;
  external set lifetimeDays(int value);
}
extension type PrivateAttributionConversionOptions._(JSObject _)
    implements JSObject {
  external factory PrivateAttributionConversionOptions({
    required String aggregationService,
    num epsilon,
    required int histogramSize,
    PrivateAttributionLogic logic,
    int value,
    int maxValue,
    int lookbackDays,
    int filterData,
    JSArray<JSString> impressionSites,
    JSArray<JSString> intermediarySites,
  });

  external String get aggregationService;
  external set aggregationService(String value);
  external double get epsilon;
  external set epsilon(num value);
  external int get histogramSize;
  external set histogramSize(int value);
  external PrivateAttributionLogic get logic;
  external set logic(PrivateAttributionLogic value);
  external int get value;
  external set value(int value);
  external int get maxValue;
  external set maxValue(int value);
  external int get lookbackDays;
  external set lookbackDays(int value);
  external int get filterData;
  external set filterData(int value);
  external JSArray<JSString> get impressionSites;
  external set impressionSites(JSArray<JSString> value);
  external JSArray<JSString> get intermediarySites;
  external set intermediarySites(JSArray<JSString> value);
}
extension type PrivateAttributionConversionResult._(JSObject _)
    implements JSObject {
  external factory PrivateAttributionConversionResult(
      {required JSUint8Array report});

  external JSUint8Array get report;
  external set report(JSUint8Array value);
}
