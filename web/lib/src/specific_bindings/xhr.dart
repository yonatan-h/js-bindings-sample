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

import 'html.dart';

typedef FormDataEntryValue = JSAny;

/// The **`FormData`** interface provides a way to construct a set of key/value
/// pairs representing form fields and their values, which can be sent using the
/// [Window.fetch], [XMLHttpRequest.send] or [navigator.sendBeacon] methods. It
/// uses the same format a form would use if the encoding type were set to
/// `"multipart/form-data"`.
///
/// You can also pass it directly to the [URLSearchParams] constructor if you
/// want to generate query parameters in the way a `form` would do if it were
/// using simple `GET` submission.
///
/// An object implementing `FormData` can directly be used in a `for...of`
/// structure, instead of [FormData.entries]: `for (const p of myFormData)` is
/// equivalent to `for (const p of myFormData.entries())`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FormData).
extension type FormData._(JSObject _) implements JSObject {
  external factory FormData([
    HTMLFormElement form,
    HTMLElement? submitter,
  ]);

  /// The **`append()`** method of the [FormData] interface appends a new value
  /// onto an existing key inside a `FormData` object, or adds the key if it
  /// does not already exist.
  ///
  /// The difference between [FormData.set] and `append()` is that if the
  /// specified key already exists, `set()` will overwrite all existing values
  /// with the new one, whereas `append()` will append the new value onto the
  /// end of the existing set of values.
  external void append(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);

  /// The **`delete()`** method of the [FormData] interface deletes a key and
  /// its value(s) from a `FormData` object.
  external void delete(String name);

  /// The **`get()`** method of the [FormData] interface
  /// returns the first value associated with a given key from within a
  /// `FormData`
  /// object. If you expect multiple values and want all of them, use the
  /// [FormData.getAll] method instead.
  external FormDataEntryValue? get(String name);

  /// The **`getAll()`** method of the [FormData] interface returns all the
  /// values associated with a given key from within a `FormData` object.
  external JSArray<FormDataEntryValue> getAll(String name);

  /// The **`has()`** method of the [FormData] interface returns whether a
  /// `FormData` object contains a certain key.
  external bool has(String name);

  /// The **`set()`** method of the [FormData] interface sets a new value for an
  /// existing key inside a `FormData` object, or adds the key/value if it does
  /// not already exist.
  ///
  /// The difference between `set()` and [FormData.append] is that if the
  /// specified key does already exist, `set()` will overwrite all existing
  /// values with the new one, whereas `append()` will append the new value onto
  /// the end of the existing set of values.
  external void set(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);
}
