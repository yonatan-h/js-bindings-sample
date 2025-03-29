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

typedef PositionCallback = JSFunction;
typedef PositionErrorCallback = JSFunction;

/// The **`Geolocation`** interface represents an object able to obtain the
/// position of the device programmatically. It gives Web content access to the
/// location of the device. This allows a website or app to offer customized
/// results based on the user's location.
///
/// An object with this interface is obtained using the [navigator.geolocation]
/// property implemented by the [Navigator] object.
///
/// > [!NOTE]
/// > For security reasons, when a web page tries to access location
/// > information, the user is notified and asked to grant permission. Be aware
/// > that each browser has its own policies and methods for requesting this
/// > permission.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation).
extension type Geolocation._(JSObject _) implements JSObject {
  /// The **`getCurrentPosition()`** method of the [Geolocation] interface is
  /// used to get the current position of the device.
  ///
  /// Note that in addition to requiring a secure context this feature may be
  /// blocked by the
  /// [`geolocation`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/geolocation)
  /// `Permissions-Policy`, and also requires that explicit permission be
  /// granted by the user.
  /// If required, the user will be prompted when this method is called.
  /// The permission state can be queried using the `geolocation` user
  /// permission in the
  /// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
  external void getCurrentPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);

  /// The **`watchPosition()`** method of the [Geolocation] interface is used to
  /// register a handler function that will be called automatically each time
  /// the position of the device changes.
  /// You can also, optionally, specify an error handling callback function.
  ///
  /// Note that in addition to requiring a secure context this feature may be
  /// blocked by the
  /// [`geolocation`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/geolocation)
  /// `Permissions-Policy`, and also requires that explicit permission be
  /// granted by the user.
  /// If required, the user will be prompted when this method is called.
  /// The permission state can be queried using the `geolocation` user
  /// permission in the
  /// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
  external int watchPosition(
    PositionCallback successCallback, [
    PositionErrorCallback? errorCallback,
    PositionOptions options,
  ]);

  /// The **`clearWatch()`** method of the [Geolocation] interface is used to
  /// unregister location/error monitoring handlers previously installed using
  /// [Geolocation.watchPosition].
  external void clearWatch(int watchId);
}
extension type PositionOptions._(JSObject _) implements JSObject {
  external factory PositionOptions({
    bool enableHighAccuracy,
    int timeout,
    int maximumAge,
  });

  external bool get enableHighAccuracy;
  external set enableHighAccuracy(bool value);
  external int get timeout;
  external set timeout(int value);
  external int get maximumAge;
  external set maximumAge(int value);
}
