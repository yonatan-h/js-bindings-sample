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

import 'geometry.dart';
import 'html.dart';
import 'webidl.dart';

typedef AlphaOption = String;
typedef VideoPixelFormat = String;
typedef VideoColorPrimaries = String;
typedef VideoTransferCharacteristics = String;
typedef VideoMatrixCoefficients = String;

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`VideoFrame`** interface of the
/// [Web Codecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// represents a frame of a video.
///
/// `VideoFrame` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoFrame).
extension type VideoFrame._(JSObject _) implements JSObject {
  external factory VideoFrame(
    JSObject dataOrImage, [
    JSObject init,
  ]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`allocationSize()`** method of the [VideoFrame] interface returns
  /// the number of bytes required to hold the video as filtered by options
  /// passed into the method.
  external int allocationSize([VideoFrameCopyToOptions options]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`copyTo()`** method of the [VideoFrame] interface copies the
  /// contents of the `VideoFrame` to an `ArrayBuffer`.
  external JSPromise<JSArray<PlaneLayout>> copyTo(
    AllowSharedBufferSource destination, [
    VideoFrameCopyToOptions options,
  ]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`clone()`** method of the [VideoFrame] interface creates a new
  /// `VideoFrame` object referencing the same media resource as the original.
  external VideoFrame clone();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [VideoFrame] interface clears all states
  /// and releases the reference to the media resource.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`format`** property of the [VideoFrame] interface returns the pixel
  /// format of the `VideoFrame`.
  external VideoPixelFormat? get format;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`codedWidth`** property of the [VideoFrame] interface returns the
  /// width of the `VideoFrame` in pixels, potentially including non-visible
  /// padding, and prior to considering potential ratio adjustments.
  external int get codedWidth;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`codedHeight`** property of the [VideoFrame] interface returns the
  /// height of the VideoFrame in pixels, potentially including non-visible
  /// padding, and prior to considering potential ratio adjustments.
  external int get codedHeight;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`codedRect`** property of the [VideoFrame] interface returns a
  /// [DOMRectReadOnly] with the width and height matching
  /// [VideoFrame.codedWidth] and [VideoFrame.codedHeight].
  external DOMRectReadOnly? get codedRect;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`visibleRect`** property of the [VideoFrame] interface returns a
  /// [DOMRectReadOnly] describing the visible rectangle of pixels for this
  /// `VideoFrame`.
  external DOMRectReadOnly? get visibleRect;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`displayWidth`** property of the [VideoFrame] interface returns the
  /// width of the `VideoFrame` after applying aspect ratio adjustments.
  external int get displayWidth;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`displayHeight`** property of the [VideoFrame] interface returns the
  /// height of the `VideoFrame` after applying aspect ratio adjustments.
  external int get displayHeight;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`duration`** property of the [VideoFrame] interface returns an
  /// integer indicating the duration of the video in microseconds.
  external int? get duration;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`timestamp`** property of the [VideoFrame] interface returns an
  /// integer indicating the timestamp of the video in microseconds.
  external int get timestamp;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`colorSpace`** property of the [VideoFrame] interface returns a
  /// [VideoColorSpace] object representing the color space of the video.
  external VideoColorSpace get colorSpace;
}
extension type VideoFrameInit._(JSObject _) implements JSObject {
  external factory VideoFrameInit({
    int duration,
    int timestamp,
    AlphaOption alpha,
    DOMRectInit visibleRect,
    num rotation,
    bool flip,
    int displayWidth,
    int displayHeight,
    VideoFrameMetadata metadata,
  });

  external int get duration;
  external set duration(int value);
  external int get timestamp;
  external set timestamp(int value);
  external AlphaOption get alpha;
  external set alpha(AlphaOption value);
  external DOMRectInit get visibleRect;
  external set visibleRect(DOMRectInit value);
  external double get rotation;
  external set rotation(num value);
  external bool get flip;
  external set flip(bool value);
  external int get displayWidth;
  external set displayWidth(int value);
  external int get displayHeight;
  external set displayHeight(int value);
  external VideoFrameMetadata get metadata;
  external set metadata(VideoFrameMetadata value);
}
extension type VideoFrameBufferInit._(JSObject _) implements JSObject {
  external factory VideoFrameBufferInit({
    required VideoPixelFormat format,
    required int codedWidth,
    required int codedHeight,
    required int timestamp,
    int duration,
    JSArray<PlaneLayout> layout,
    DOMRectInit visibleRect,
    num rotation,
    bool flip,
    int displayWidth,
    int displayHeight,
    VideoColorSpaceInit colorSpace,
    JSArray<JSArrayBuffer> transfer,
    VideoFrameMetadata metadata,
  });

  external VideoPixelFormat get format;
  external set format(VideoPixelFormat value);
  external int get codedWidth;
  external set codedWidth(int value);
  external int get codedHeight;
  external set codedHeight(int value);
  external int get timestamp;
  external set timestamp(int value);
  external int get duration;
  external set duration(int value);
  external JSArray<PlaneLayout> get layout;
  external set layout(JSArray<PlaneLayout> value);
  external DOMRectInit get visibleRect;
  external set visibleRect(DOMRectInit value);
  external double get rotation;
  external set rotation(num value);
  external bool get flip;
  external set flip(bool value);
  external int get displayWidth;
  external set displayWidth(int value);
  external int get displayHeight;
  external set displayHeight(int value);
  external VideoColorSpaceInit get colorSpace;
  external set colorSpace(VideoColorSpaceInit value);
  external JSArray<JSArrayBuffer> get transfer;
  external set transfer(JSArray<JSArrayBuffer> value);
  external VideoFrameMetadata get metadata;
  external set metadata(VideoFrameMetadata value);
}
extension type VideoFrameMetadata._(JSObject _) implements JSObject {
  VideoFrameMetadata() : _ = JSObject();
}
extension type VideoFrameCopyToOptions._(JSObject _) implements JSObject {
  external factory VideoFrameCopyToOptions({
    DOMRectInit rect,
    JSArray<PlaneLayout> layout,
    VideoPixelFormat format,
    PredefinedColorSpace colorSpace,
  });

  external DOMRectInit get rect;
  external set rect(DOMRectInit value);
  external JSArray<PlaneLayout> get layout;
  external set layout(JSArray<PlaneLayout> value);
  external VideoPixelFormat get format;
  external set format(VideoPixelFormat value);
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
}
extension type PlaneLayout._(JSObject _) implements JSObject {
  external factory PlaneLayout({
    required int offset,
    required int stride,
  });

  external int get offset;
  external set offset(int value);
  external int get stride;
  external set stride(int value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`VideoColorSpace`** interface of the [WebCodecs API] represents the
/// color space of a video.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoColorSpace).
extension type VideoColorSpace._(JSObject _) implements JSObject {
  external factory VideoColorSpace([VideoColorSpaceInit init]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`toJSON()`** method of the [VideoColorSpace] interface is a
  /// _serializer_ that returns a JSON representation of the `VideoColorSpace`
  /// object.
  external VideoColorSpaceInit toJSON();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`primaries`** read-only property of the [VideoColorSpace] interface
  /// returns the color  of the video.
  external VideoColorPrimaries? get primaries;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`transfer`** read-only property of the [VideoColorSpace] interface
  /// returns the opto-electronic transfer characteristics of the video.
  external VideoTransferCharacteristics? get transfer;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`matrix`** read-only property of the [VideoColorSpace] interface
  /// returns the matrix coefficient of the video. Matrix coefficients describe
  /// the relationship between sample component values and color coordinates.
  external VideoMatrixCoefficients? get matrix;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`fullRange`** read-only property of the [VideoColorSpace] interface
  /// returns `true` if full-range color values are used.
  external bool? get fullRange;
}
extension type VideoColorSpaceInit._(JSObject _) implements JSObject {
  external factory VideoColorSpaceInit({
    VideoColorPrimaries? primaries,
    VideoTransferCharacteristics? transfer,
    VideoMatrixCoefficients? matrix,
    bool? fullRange,
  });

  external VideoColorPrimaries? get primaries;
  external set primaries(VideoColorPrimaries? value);
  external VideoTransferCharacteristics? get transfer;
  external set transfer(VideoTransferCharacteristics? value);
  external VideoMatrixCoefficients? get matrix;
  external set matrix(VideoMatrixCoefficients? value);
  external bool? get fullRange;
  external set fullRange(bool? value);
}
