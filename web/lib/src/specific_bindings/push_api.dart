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

import 'hr_time.dart';

typedef PushEncryptionKeyName = String;

/// The **`PushManager`** interface of the
/// [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
/// provides a way to receive notifications from third-party servers as well as
/// request URLs for push notifications.
///
/// This interface is accessed via the [ServiceWorkerRegistration.pushManager]
/// property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PushManager).
extension type PushManager._(JSObject _) implements JSObject {
  /// The **`supportedContentEncodings`** read-only static property of the
  /// [PushManager] interface returns an array of supported content codings that
  /// can be used to encrypt the payload of a push message.
  ///
  /// User agents must support the `aes128gcm` content coding defined in `8291`,
  /// and may also support content codings defined from previous versions of the
  /// specification.
  /// The returned array is frozen, and may not be modified by the recipient.
  ///
  /// The application server requires this coding in order to encrypt push
  /// messages for sending to the push server.
  /// The coding used for encryption is also included by the app server in the
  /// HTTP header field of each push message.
  ///
  /// The specification does not define how the client code should send the
  /// application server the supported codings, or the information in the
  /// [PushSubscription] that it also needs in order to encrypt and send a push
  /// message.
  /// One approach is shown in the examples section below.
  external static JSArray<JSString> get supportedContentEncodings;

  /// The **`subscribe()`** method of the [PushManager]
  /// interface subscribes to a push service.
  ///
  /// It returns a `Promise` that resolves to a [PushSubscription]
  /// object containing details of a push subscription. A new push subscription
  /// is created if
  /// the current service worker does not have an existing subscription.
  external JSPromise<PushSubscription> subscribe(
      [PushSubscriptionOptionsInit options]);

  /// The **`PushManager.getSubscription()`** method of the [PushManager]
  /// interface retrieves an existing push subscription.
  ///
  /// It returns a `Promise` that resolves to a [PushSubscription] object
  /// containing details of an existing subscription. If no existing
  /// subscription exists, this resolves to a `null` value.
  external JSPromise<PushSubscription?> getSubscription();

  /// The **`permissionState()`** method of the
  /// [PushManager] interface returns a `Promise` that resolves to a
  /// string indicating the permission state of the push manager. Possible
  /// values are `'prompt'`, `'denied'`, or `'granted'`.
  ///
  /// > [!NOTE]
  /// > As of Firefox 44, the permissions for
  /// > [Notifications](https://developer.mozilla.org/en-US/docs/Web/API/Notifications_API)
  /// > and [Push](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
  /// > have been merged. If permission is
  /// > granted for notifications, push will also be enabled.
  external JSPromise<JSString> permissionState(
      [PushSubscriptionOptionsInit options]);
}

/// The **`PushSubscriptionOptions`** interface of the [Push API] represents the
/// options associated with a push subscription.
///
/// The read-only `PushSubscriptionOptions` object is returned by calling
/// [PushSubscription.options] on a [PushSubscription]. This interface has no
/// constructor of its own.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PushSubscriptionOptions).
extension type PushSubscriptionOptions._(JSObject _) implements JSObject {
  /// The **`userVisibleOnly`** read-only property of the
  /// [PushSubscriptionOptions] interface indicates if the returned push
  /// subscription will only be used for messages whose effect is made visible
  /// to the user.
  external bool get userVisibleOnly;

  /// The **`applicationServerKey`** read-only property of the
  /// [PushSubscriptionOptions] interface contains the public key used by the
  /// push server.
  external JSArrayBuffer? get applicationServerKey;
}
extension type PushSubscriptionOptionsInit._(JSObject _) implements JSObject {
  external factory PushSubscriptionOptionsInit({
    bool userVisibleOnly,
    JSAny? applicationServerKey,
  });

  external bool get userVisibleOnly;
  external set userVisibleOnly(bool value);
  external JSAny? get applicationServerKey;
  external set applicationServerKey(JSAny? value);
}

/// The `PushSubscription` interface of the
/// [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
/// provides a subscription's URL endpoint along with the public key and secrets
/// that should be used for encrypting push messages to this subscription.
/// This information must be passed to the application server, using any desired
/// application-specific method.
///
/// The interface also provides information about when the subscription will
/// expire, and a method to unsubscribe from the subscription.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PushSubscription).
extension type PushSubscription._(JSObject _) implements JSObject {
  /// The `getKey()` method of the [PushSubscription] interface
  /// returns an `ArrayBuffer` representing a client public key, which can then
  /// be sent to a server and used in encrypting push message data.
  external JSArrayBuffer? getKey(PushEncryptionKeyName name);

  /// The `unsubscribe()` method of the [PushSubscription] interface
  /// returns a `Promise` that resolves to a boolean value when the
  /// current subscription is successfully unsubscribed.
  external JSPromise<JSBoolean> unsubscribe();

  /// The `toJSON()` method of the [PushSubscription] interface is a
  /// standard serializer: it returns a JSON representation of the subscription
  /// properties,
  /// providing a useful shortcut.
  external PushSubscriptionJSON toJSON();

  /// The **`endpoint`** read-only property of the
  /// [PushSubscription] interface returns a string containing
  /// the endpoint associated with the push subscription.
  ///
  /// The endpoint takes the form of a custom URL pointing to a push server,
  /// which can be
  /// used to send a push message to the particular service worker instance that
  /// subscribed to
  /// the push service. For this reason, it is a good idea to keep your endpoint
  /// a secret, so
  /// others do not hijack it and abuse the push functionality.
  external String get endpoint;

  /// The **`expirationTime`** read-only property of the
  /// [PushSubscription] interface returns a [DOMHighResTimeStamp]
  /// of the subscription expiration time associated with the push subscription,
  /// if there is
  /// one, or `null` otherwise.
  external EpochTimeStamp? get expirationTime;

  /// The **`options`** read-only property
  /// of the [PushSubscription] interface is an object containing the options
  /// used to create the subscription.
  external PushSubscriptionOptions get options;
}
extension type PushSubscriptionJSON._(JSObject _) implements JSObject {
  external factory PushSubscriptionJSON({
    String endpoint,
    EpochTimeStamp? expirationTime,
    JSObject keys,
  });

  external String get endpoint;
  external set endpoint(String value);
  external EpochTimeStamp? get expirationTime;
  external set expirationTime(EpochTimeStamp? value);
  external JSObject get keys;
  external set keys(JSObject value);
}
