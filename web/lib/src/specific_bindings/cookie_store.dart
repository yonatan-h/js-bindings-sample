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
import 'hr_time.dart';
import 'html.dart';

typedef CookieList = JSArray<CookieListItem>;
typedef CookieSameSite = String;

/// @AvailableInWorkers("window_and_service")
///
/// The **`CookieStore`** interface of the [Cookie Store API] provides methods
/// for getting and setting cookies asynchronously from either a page or a
/// service worker.
///
/// The `CookieStore` is accessed via attributes in the global scope in a
/// [Window] or [ServiceWorkerGlobalScope] context. Therefore there is no
/// constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CookieStore).
extension type CookieStore._(JSObject _) implements EventTarget, JSObject {
  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`get()`** method of the [CookieStore] interface returns a single
  /// cookie with the given `name` or `options` object. The method will return
  /// the first matching cookie for the passed parameters.
  external JSPromise<CookieListItem?> get([JSAny nameOrOptions]);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`getAll()`** method of the [CookieStore] interface returns a list of
  /// cookies that match the `name` or `options` passed to it. Passing no
  /// parameters will return all cookies for the current context.
  external JSPromise<CookieList> getAll([JSAny nameOrOptions]);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`set()`** method of the [CookieStore] interface sets a cookie with
  /// the given `name` and `value` or `options` object.
  external JSPromise<JSAny?> set(
    JSAny nameOrOptions, [
    String value,
  ]);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`delete()`** method of the [CookieStore] interface deletes a cookie
  /// with the given `name` or `options` object. The `delete()` method expires
  /// the cookie by changing the date to one in the past.
  external JSPromise<JSAny?> delete(JSAny nameOrOptions);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}
extension type CookieStoreGetOptions._(JSObject _) implements JSObject {
  external factory CookieStoreGetOptions({
    String name,
    String url,
  });

  external String get name;
  external set name(String value);
  external String get url;
  external set url(String value);
}
extension type CookieInit._(JSObject _) implements JSObject {
  external factory CookieInit({
    required String name,
    required String value,
    DOMHighResTimeStamp? expires,
    String? domain,
    String path,
    CookieSameSite sameSite,
    bool partitioned,
  });

  external String get name;
  external set name(String value);
  external String get value;
  external set value(String value);
  external double? get expires;
  external set expires(DOMHighResTimeStamp? value);
  external String? get domain;
  external set domain(String? value);
  external String get path;
  external set path(String value);
  external CookieSameSite get sameSite;
  external set sameSite(CookieSameSite value);
  external bool get partitioned;
  external set partitioned(bool value);
}
extension type CookieStoreDeleteOptions._(JSObject _) implements JSObject {
  external factory CookieStoreDeleteOptions({
    required String name,
    String? domain,
    String path,
    bool partitioned,
  });

  external String get name;
  external set name(String value);
  external String? get domain;
  external set domain(String? value);
  external String get path;
  external set path(String value);
  external bool get partitioned;
  external set partitioned(bool value);
}
extension type CookieListItem._(JSObject _) implements JSObject {
  external factory CookieListItem({
    String name,
    String value,
    String? domain,
    String path,
    DOMHighResTimeStamp? expires,
    bool secure,
    CookieSameSite sameSite,
    bool partitioned,
  });

  external String get name;
  external set name(String value);
  external String get value;
  external set value(String value);
  external String? get domain;
  external set domain(String? value);
  external String get path;
  external set path(String value);
  external double? get expires;
  external set expires(DOMHighResTimeStamp? value);
  external bool get secure;
  external set secure(bool value);
  external CookieSameSite get sameSite;
  external set sameSite(CookieSameSite value);
  external bool get partitioned;
  external set partitioned(bool value);
}
