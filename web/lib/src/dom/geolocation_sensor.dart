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
import 'generic_sensor.dart';
import 'hr_time.dart';

extension type GeolocationSensor._(JSObject _) implements Sensor, JSObject {
  external factory GeolocationSensor([GeolocationSensorOptions options]);

  external static JSPromise<GeolocationSensorReading> read(
      [ReadOptions readOptions]);
  external double? get latitude;
  external double? get longitude;
  external double? get altitude;
  external double? get accuracy;
  external double? get altitudeAccuracy;
  external double? get heading;
  external double? get speed;
}
extension type GeolocationSensorOptions._(JSObject _)
    implements SensorOptions, JSObject {
  external factory GeolocationSensorOptions({num frequency});
}
extension type ReadOptions._(JSObject _)
    implements GeolocationSensorOptions, JSObject {
  external factory ReadOptions({
    num frequency,
    AbortSignal? signal,
  });

  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
}
extension type GeolocationSensorReading._(JSObject _) implements JSObject {
  external factory GeolocationSensorReading({
    DOMHighResTimeStamp? timestamp,
    num? latitude,
    num? longitude,
    num? altitude,
    num? accuracy,
    num? altitudeAccuracy,
    num? heading,
    num? speed,
  });

  external double? get timestamp;
  external set timestamp(DOMHighResTimeStamp? value);
  external double? get latitude;
  external set latitude(num? value);
  external double? get longitude;
  external set longitude(num? value);
  external double? get altitude;
  external set altitude(num? value);
  external double? get accuracy;
  external set accuracy(num? value);
  external double? get altitudeAccuracy;
  external set altitudeAccuracy(num? value);
  external double? get heading;
  external set heading(num? value);
  external double? get speed;
  external set speed(num? value);
}
