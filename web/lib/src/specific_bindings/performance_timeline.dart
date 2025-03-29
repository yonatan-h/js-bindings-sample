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

typedef PerformanceEntryList = JSArray<PerformanceEntry>;

/// The **`PerformanceEntry`** object encapsulates a single performance metric
/// that is part of the browser's performance timeline.
///
/// The Performance API offers built-in metrics which are specialized subclasses
/// of `PerformanceEntry`. This includes entries for resource loading, event
/// timing, and more.
///
/// A performance entry can also be created by calling the [Performance.mark] or
/// [Performance.measure] methods at an explicit point in an application. This
/// allows you to add your own metrics to the performance timeline.
///
/// The `PerformanceEntry` instances will always be one of the following
/// subclasses:
///
/// - [LargestContentfulPaint]
/// - [LayoutShift]
/// - [PerformanceEventTiming]
/// - [PerformanceLongAnimationFrameTiming]
/// - [PerformanceLongTaskTiming]
/// - [PerformanceMark]
/// - [PerformanceMeasure]
/// - [PerformanceNavigationTiming]
/// - [PerformancePaintTiming]
/// - [PerformanceResourceTiming]
/// - [PerformanceScriptTiming]
/// - [PerformanceServerTiming]
/// - [TaskAttributionTiming]
/// - [VisibilityStateEntry]
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry).
extension type PerformanceEntry._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method is a ; it returns a JSON representation of the
  /// [PerformanceEntry] object.
  external JSObject toJSON();

  /// The read-only **`name`** property of the [PerformanceEntry] interface is a
  /// string representing the name for a performance entry. It acts as an
  /// identifier, but it does not have to be unique. The value depends on the
  /// subclass.
  external String get name;

  /// The read-only **`entryType`** property returns a string representing the
  /// type of performance metric that this entry represents.
  ///
  /// All supported `entryTypes` are available using the static property
  /// [PerformanceObserver.supportedEntryTypes_static].
  external String get entryType;

  /// The read-only **`startTime`** property returns the first  recorded for
  /// this [PerformanceEntry]. The meaning of this property depends on the value
  /// of this entry's [PerformanceEntry.entryType].
  external double get startTime;

  /// The read-only **`duration`** property returns a  that is the duration of
  /// the . The meaning of this property depends on the value of this entry's
  /// [PerformanceEntry.entryType].
  external double get duration;
}
