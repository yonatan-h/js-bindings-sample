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

import 'payment_request.dart';
import 'webauthn.dart';
import 'webidl.dart';

/// The **`SecurePaymentConfirmationRequest`** dictionary describes input to the
/// [Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API)
/// when used to authenticate a user during an e-commerce transaction
/// [using SPC with Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API/Using_secure_payment_confirmation).
///
/// An instance of this dictionary must be passed into the
/// [PaymentRequest.PaymentRequest] constructor as the value of the
/// [`data`](https://developer.mozilla.org/en-US/docs/Web/API/PaymentRequest/PaymentRequest#data)
/// field corresponding to a
/// [`supportedMethods`](https://developer.mozilla.org/en-US/docs/Web/API/PaymentRequest/PaymentRequest#supportedmethods)
/// value of `"secure-payment-confirmation"`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SecurePaymentConfirmationRequest).
extension type SecurePaymentConfirmationRequest._(JSObject _)
    implements JSObject {
  external factory SecurePaymentConfirmationRequest({
    required BufferSource challenge,
    required String rpId,
    required JSArray<BufferSource> credentialIds,
    required PaymentCredentialInstrument instrument,
    int timeout,
    String payeeName,
    String payeeOrigin,
    AuthenticationExtensionsClientInputs extensions,
    JSArray<JSString> locale,
    bool showOptOut,
  });

  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external String get rpId;
  external set rpId(String value);
  external JSArray<BufferSource> get credentialIds;
  external set credentialIds(JSArray<BufferSource> value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
  external int get timeout;
  external set timeout(int value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external JSArray<JSString> get locale;
  external set locale(JSArray<JSString> value);
  external bool get showOptOut;
  external set showOptOut(bool value);
}
extension type AuthenticationExtensionsPaymentInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPaymentInputs({
    bool isPayment,
    String rpId,
    String topOrigin,
    String payeeName,
    String payeeOrigin,
    PaymentCurrencyAmount total,
    PaymentCredentialInstrument instrument,
  });

  external bool get isPayment;
  external set isPayment(bool value);
  external String get rpId;
  external set rpId(String value);
  external String get topOrigin;
  external set topOrigin(String value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
}
extension type CollectedClientPaymentData._(JSObject _)
    implements CollectedClientData, JSObject {
  external factory CollectedClientPaymentData({
    required String type,
    required String challenge,
    required String origin,
    bool crossOrigin,
    String topOrigin,
    required CollectedClientAdditionalPaymentData payment,
  });

  external CollectedClientAdditionalPaymentData get payment;
  external set payment(CollectedClientAdditionalPaymentData value);
}
extension type CollectedClientAdditionalPaymentData._(JSObject _)
    implements JSObject {
  external factory CollectedClientAdditionalPaymentData({
    required String rpId,
    required String topOrigin,
    String payeeName,
    String payeeOrigin,
    required PaymentCurrencyAmount total,
    required PaymentCredentialInstrument instrument,
  });

  external String get rpId;
  external set rpId(String value);
  external String get topOrigin;
  external set topOrigin(String value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
}
extension type PaymentCredentialInstrument._(JSObject _) implements JSObject {
  external factory PaymentCredentialInstrument({
    required String displayName,
    required String icon,
    bool iconMustBeShown,
  });

  external String get displayName;
  external set displayName(String value);
  external String get icon;
  external set icon(String value);
  external bool get iconMustBeShown;
  external set iconMustBeShown(bool value);
}
