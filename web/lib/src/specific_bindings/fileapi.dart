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

import 'streams.dart';

typedef BlobPart = JSAny;
typedef EndingType = String;

/// The **`Blob`** interface represents a blob, which is a file-like object of
/// immutable, raw data; they can be read as text or binary data, or converted
/// into a [ReadableStream] so its methods can be used for processing the data.
///
/// Blobs can represent data that isn't necessarily in a JavaScript-native
/// format. The [File] interface is based on `Blob`, inheriting blob
/// functionality and expanding it to support files on the user's system.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Blob).
extension type Blob._(JSObject _) implements JSObject {
  external factory Blob([
    JSArray<BlobPart> blobParts,
    BlobPropertyBag options,
  ]);

  /// The **`slice()`** method of the [Blob] interface
  /// creates and returns a new `Blob` object which contains data from a subset
  /// of
  /// the blob on which it's called.
  external Blob slice([
    int start,
    int end,
    String contentType,
  ]);

  /// The **`stream()`** method of the [Blob] interface returns a
  /// [ReadableStream] which upon reading returns the data contained within the
  /// `Blob`.
  external ReadableStream stream();

  /// The **`text()`** method of the
  /// [Blob] interface returns a `Promise` that resolves with a
  /// string containing the contents of the blob, interpreted as UTF-8.
  external JSPromise<JSString> text();

  /// The **`arrayBuffer()`** method of the [Blob]
  /// interface returns a `Promise` that resolves with the contents of the blob
  /// as
  /// binary data contained in an `ArrayBuffer`.
  external JSPromise<JSArrayBuffer> arrayBuffer();

  /// The **`bytes()`** method of the [Blob] interface returns a `Promise` that
  /// resolves with a `Uint8Array` containing the contents of the blob as an
  /// array of bytes.
  external JSPromise<JSUint8Array> bytes();

  /// The **`size`** read-only property of the [Blob] interface returns
  /// the size of the [Blob] or [File] in bytes.
  external int get size;

  /// The **`type`** read-only property of the [Blob] interface returns the  of
  /// the file.
  ///
  /// > [!NOTE]
  /// > Based on the current implementation, browsers won't actually read the
  /// > bytestream of a file to determine its media type.
  /// > It is assumed based on the file extension; a PNG image file renamed to
  /// > .txt would give "_text/plain_" and not "_image/png_". Moreover,
  /// > `blob.type` is generally reliable only for common file types like
  /// > images, HTML documents, audio and video.
  /// > Uncommon file extensions would return an empty string.
  /// > Client configuration (for instance, the Windows Registry) may result in
  /// > unexpected values even for common types. **Developers are advised not to
  /// > rely on this property as a sole validation scheme.**
  external String get type;
}
extension type BlobPropertyBag._(JSObject _) implements JSObject {
  external factory BlobPropertyBag({
    String type,
    EndingType endings,
  });

  external String get type;
  external set type(String value);
  external EndingType get endings;
  external set endings(EndingType value);
}
