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

/// The **`URLSearchParams`** interface defines utility methods to work with the
/// query string of a URL.
///
/// `URLSearchParams` objects are
/// [iterable](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#the_iterable_protocol),
/// so they can directly be used in a `for...of` structure to iterate over
/// key/value pairs in the same order as they appear in the query string, for
/// example the following two lines are equivalent:
///
/// ```js
/// for (const [key, value] of mySearchParams) {
/// }
/// for (const [key, value] of mySearchParams.entries()) {
/// }
/// ```
///
/// Although `URLSearchParams` is functionally similar to a `Map`, when
/// iterating, it may suffer from some
/// [pitfalls](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#concurrent_modifications_when_iterating)
/// that `Map` doesn't encounter due to how it's implemented.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams).
extension type URLSearchParams._(JSObject _) implements JSObject {
  external factory URLSearchParams([JSAny init]);

  /// The **`append()`** method of the [URLSearchParams]
  /// interface appends a specified key/value pair as a new search parameter.
  ///
  /// As shown in the example below, if the same key is appended multiple times
  /// it will
  /// appear in the parameter string multiple times for each value.
  external void append(
    String name,
    String value,
  );

  /// The **`delete()`** method of the [URLSearchParams] interface deletes
  /// specified parameters and their associated value(s) from the list of all
  /// search parameters.
  ///
  /// A parameter name and optional value are used to match parameters.
  /// If only a parameter name is specified, then all search parameters that
  /// match the name are deleted, along with their associated values.
  /// If both a parameter name and value are specified, then all search
  /// parameters that match both the parameter name and value are deleted.
  external void delete(
    String name, [
    String value,
  ]);

  /// The **`get()`** method of the [URLSearchParams]
  /// interface returns the first value associated to the given search
  /// parameter.
  external String? get(String name);

  /// The **`getAll()`** method of the [URLSearchParams]
  /// interface returns all the values associated with a given search parameter
  /// as an array.
  external JSArray<JSString> getAll(String name);

  /// The **`has()`** method of the [URLSearchParams] interface returns a
  /// boolean value that indicates whether the specified parameter is in the
  /// search parameters.
  ///
  /// A parameter name and optional value are used to match parameters.
  /// If only a parameter name is specified, then the method will return `true`
  /// if any parameters in the query string match the name, and `false`
  /// otherwise.
  /// If both a parameter name and value are specified, then the method will
  /// return `true` if a parameter matches both the name and value.
  external bool has(
    String name, [
    String value,
  ]);

  /// The **`set()`** method of the [URLSearchParams]
  /// interface sets the value associated with a given search parameter to the
  /// given value.
  /// If there were several matching values, this method deletes the others. If
  /// the search
  /// parameter doesn't exist, this method creates it.
  external void set(
    String name,
    String value,
  );

  /// The **`URLSearchParams.sort()`** method sorts all key/value
  /// pairs contained in this object in place and returns `undefined`. The sort
  /// order is according to unicode code points of the keys. This method uses a
  /// stable sorting
  /// algorithm (i.e. the relative order between key/value pairs with equal keys
  /// will be
  /// preserved).
  external void sort();

  /// The **`size`** read-only property of the [URLSearchParams] interface
  /// indicates the total number of search parameter entries.
  external int get size;
}
