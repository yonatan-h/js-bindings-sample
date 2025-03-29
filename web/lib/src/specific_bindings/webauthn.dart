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

import 'fido.dart';
import 'secure_payment_confirmation.dart';
import 'webidl.dart';

typedef COSEAlgorithmIdentifier = int;
extension type PublicKeyCredentialParameters._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialParameters({
    required String type,
    required COSEAlgorithmIdentifier alg,
  });

  external String get type;
  external set type(String value);
  external COSEAlgorithmIdentifier get alg;
  external set alg(COSEAlgorithmIdentifier value);
}

/// The **`PublicKeyCredentialCreationOptions`** dictionary represents the
/// object passed to [CredentialsContainer.create] as the value of the
/// `publicKey` option: that is, when using `create()` to create a public key
/// credential using the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PublicKeyCredentialCreationOptions).
extension type PublicKeyCredentialCreationOptions._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialCreationOptions({
    required PublicKeyCredentialRpEntity rp,
    required PublicKeyCredentialUserEntity user,
    required BufferSource challenge,
    required JSArray<PublicKeyCredentialParameters> pubKeyCredParams,
    int timeout,
    JSArray<PublicKeyCredentialDescriptor> excludeCredentials,
    AuthenticatorSelectionCriteria authenticatorSelection,
    JSArray<JSString> hints,
    String attestation,
    JSArray<JSString> attestationFormats,
    AuthenticationExtensionsClientInputs extensions,
  });

  external PublicKeyCredentialRpEntity get rp;
  external set rp(PublicKeyCredentialRpEntity value);
  external PublicKeyCredentialUserEntity get user;
  external set user(PublicKeyCredentialUserEntity value);
  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external JSArray<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set pubKeyCredParams(JSArray<PublicKeyCredentialParameters> value);
  external int get timeout;
  external set timeout(int value);
  external JSArray<PublicKeyCredentialDescriptor> get excludeCredentials;
  external set excludeCredentials(JSArray<PublicKeyCredentialDescriptor> value);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set authenticatorSelection(AuthenticatorSelectionCriteria value);
  external JSArray<JSString> get hints;
  external set hints(JSArray<JSString> value);
  external String get attestation;
  external set attestation(String value);
  external JSArray<JSString> get attestationFormats;
  external set attestationFormats(JSArray<JSString> value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs value);
}
extension type PublicKeyCredentialEntity._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialEntity({required String name});

  external String get name;
  external set name(String value);
}
extension type PublicKeyCredentialRpEntity._(JSObject _)
    implements PublicKeyCredentialEntity, JSObject {
  external factory PublicKeyCredentialRpEntity({
    required String name,
    String id,
  });

  external String get id;
  external set id(String value);
}
extension type PublicKeyCredentialUserEntity._(JSObject _)
    implements PublicKeyCredentialEntity, JSObject {
  external factory PublicKeyCredentialUserEntity({
    required String name,
    required BufferSource id,
    required String displayName,
  });

  external BufferSource get id;
  external set id(BufferSource value);
  external String get displayName;
  external set displayName(String value);
}
extension type AuthenticatorSelectionCriteria._(JSObject _)
    implements JSObject {
  external factory AuthenticatorSelectionCriteria({
    String authenticatorAttachment,
    String residentKey,
    bool requireResidentKey,
    String userVerification,
  });

  external String get authenticatorAttachment;
  external set authenticatorAttachment(String value);
  external String get residentKey;
  external set residentKey(String value);
  external bool get requireResidentKey;
  external set requireResidentKey(bool value);
  external String get userVerification;
  external set userVerification(String value);
}

/// The **`PublicKeyCredentialRequestOptions`** dictionary represents the object
/// passed to [CredentialsContainer.get] as the value of the `publicKey` option.
///
/// It is used to request a [PublicKeyCredential] provided by an  that supports
/// the
/// [Web Authentication API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Authentication_API).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PublicKeyCredentialRequestOptions).
extension type PublicKeyCredentialRequestOptions._(JSObject _)
    implements JSObject {
  external factory PublicKeyCredentialRequestOptions({
    required BufferSource challenge,
    int timeout,
    String rpId,
    JSArray<PublicKeyCredentialDescriptor> allowCredentials,
    String userVerification,
    JSArray<JSString> hints,
    AuthenticationExtensionsClientInputs extensions,
  });

  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external int get timeout;
  external set timeout(int value);
  external String get rpId;
  external set rpId(String value);
  external JSArray<PublicKeyCredentialDescriptor> get allowCredentials;
  external set allowCredentials(JSArray<PublicKeyCredentialDescriptor> value);
  external String get userVerification;
  external set userVerification(String value);
  external JSArray<JSString> get hints;
  external set hints(JSArray<JSString> value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs value);
}
extension type AuthenticationExtensionsClientInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsClientInputs({
    String credentialProtectionPolicy,
    bool enforceCredentialProtectionPolicy,
    JSArrayBuffer credBlob,
    bool getCredBlob,
    bool minPinLength,
    bool hmacCreateSecret,
    HMACGetSecretInput hmacGetSecret,
    AuthenticationExtensionsPaymentInputs payment,
    String appid,
    String appidExclude,
    bool credProps,
    AuthenticationExtensionsPRFInputs prf,
    AuthenticationExtensionsLargeBlobInputs largeBlob,
  });

  external String get credentialProtectionPolicy;
  external set credentialProtectionPolicy(String value);
  external bool get enforceCredentialProtectionPolicy;
  external set enforceCredentialProtectionPolicy(bool value);
  external JSArrayBuffer get credBlob;
  external set credBlob(JSArrayBuffer value);
  external bool get getCredBlob;
  external set getCredBlob(bool value);
  external bool get minPinLength;
  external set minPinLength(bool value);
  external bool get hmacCreateSecret;
  external set hmacCreateSecret(bool value);
  external HMACGetSecretInput get hmacGetSecret;
  external set hmacGetSecret(HMACGetSecretInput value);
  external AuthenticationExtensionsPaymentInputs get payment;
  external set payment(AuthenticationExtensionsPaymentInputs value);
  external String get appid;
  external set appid(String value);
  external String get appidExclude;
  external set appidExclude(String value);
  external bool get credProps;
  external set credProps(bool value);
  external AuthenticationExtensionsPRFInputs get prf;
  external set prf(AuthenticationExtensionsPRFInputs value);
  external AuthenticationExtensionsLargeBlobInputs get largeBlob;
  external set largeBlob(AuthenticationExtensionsLargeBlobInputs value);
}
extension type PublicKeyCredentialDescriptor._(JSObject _) implements JSObject {
  external factory PublicKeyCredentialDescriptor({
    required String type,
    required BufferSource id,
    JSArray<JSString> transports,
  });

  external String get type;
  external set type(String value);
  external BufferSource get id;
  external set id(BufferSource value);
  external JSArray<JSString> get transports;
  external set transports(JSArray<JSString> value);
}
extension type AuthenticationExtensionsPRFValues._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFValues({
    required BufferSource first,
    BufferSource second,
  });

  external BufferSource get first;
  external set first(BufferSource value);
  external BufferSource get second;
  external set second(BufferSource value);
}
extension type AuthenticationExtensionsPRFInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPRFInputs({
    AuthenticationExtensionsPRFValues eval,
    JSObject evalByCredential,
  });

  external AuthenticationExtensionsPRFValues get eval;
  external set eval(AuthenticationExtensionsPRFValues value);
  external JSObject get evalByCredential;
  external set evalByCredential(JSObject value);
}
extension type AuthenticationExtensionsLargeBlobInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsLargeBlobInputs({
    String support,
    bool read,
    BufferSource write,
  });

  external String get support;
  external set support(String value);
  external bool get read;
  external set read(bool value);
  external BufferSource get write;
  external set write(BufferSource value);
}
