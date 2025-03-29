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
import 'html.dart';

/// The **`SpeechSynthesis`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// is the controller interface for the speech service; this can be used to
/// retrieve information about the synthesis voices available on the device,
/// start and pause speech, and other commands besides.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis).
extension type SpeechSynthesis._(JSObject _) implements EventTarget, JSObject {
  /// The **`speak()`** method of the [SpeechSynthesis]
  /// interface adds an [SpeechSynthesisUtterance] to the utterance
  /// queue; it will be spoken when any other utterances queued before it have
  /// been spoken.
  external void speak(SpeechSynthesisUtterance utterance);

  /// The **`cancel()`** method of the [SpeechSynthesis]
  /// interface removes all utterances from the utterance queue.
  ///
  /// If an utterance is currently being spoken, speaking will stop immediately.
  external void cancel();

  /// The **`pause()`** method of the [SpeechSynthesis]
  /// interface puts the `SpeechSynthesis` object into a paused state.
  external void pause();

  /// The **`resume()`** method of the [SpeechSynthesis]
  /// interface puts the `SpeechSynthesis` object into a non-paused state:
  /// resumes it if it was already paused.
  external void resume();

  /// The **`getVoices()`** method of the
  /// [SpeechSynthesis] interface returns a list of
  /// [SpeechSynthesisVoice] objects representing all the available voices on
  /// the
  /// current device.
  external JSArray<SpeechSynthesisVoice> getVoices();

  /// The **`pending`** read-only property of the
  /// [SpeechSynthesis] interface is a boolean value that returns
  /// `true` if the utterance queue contains as-yet-unspoken utterances.
  external bool get pending;

  /// The **`speaking`** read-only property of the
  /// [SpeechSynthesis] interface is a boolean value that returns
  /// `true` if an utterance is currently in the process of being spoken — even
  /// if `SpeechSynthesis` is in a
  /// [SpeechSynthesis.pause] state.
  external bool get speaking;

  /// The **`paused`** read-only property of the
  /// [SpeechSynthesis] interface is a boolean value that returns
  /// `true` if the `SpeechSynthesis` object is in a paused state, or `false` if
  /// not.
  ///
  /// It can be set to [SpeechSynthesis.pause] even if nothing is
  /// currently being spoken through it. If
  /// [SpeechSynthesisUtterance] are then added to the utterance
  /// queue, they will not be spoken until the `SpeechSynthesis` object is
  /// unpaused, using [SpeechSynthesis.resume].
  external bool get paused;
  external EventHandler get onvoiceschanged;
  external set onvoiceschanged(EventHandler value);
}

/// The **`SpeechSynthesisUtterance`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a speech request.
/// It contains the content the speech service should read and information about
/// how to read it (e.g. language, pitch and volume.)
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance).
extension type SpeechSynthesisUtterance._(JSObject _)
    implements EventTarget, JSObject {
  external factory SpeechSynthesisUtterance([String text]);

  /// The **`text`** property of the
  /// [SpeechSynthesisUtterance] interface gets and sets the text that will be
  /// synthesized when the utterance is spoken.
  ///
  /// The text may be provided as plain text, or a well-formed
  /// [SSML](https://www.w3.org/TR/speech-synthesis/) document.
  /// The SSML tags will be stripped away by devices that don't support SSML.
  external String get text;
  external set text(String value);

  /// The **`lang`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the language of the utterance.
  ///
  /// If unset, the app's (i.e. the `html`
  /// [`lang`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang)
  /// value) lang will be used, or the user-agent default if that is unset too.
  external String get lang;
  external set lang(String value);

  /// The **`voice`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the voice that will be used to speak the utterance.
  ///
  /// This should be set to one of the [SpeechSynthesisVoice] objects returned
  /// by [SpeechSynthesis.getVoices].
  /// If not set by the time the utterance is spoken, the voice used will be the
  /// most suitable default voice available for the utterance's
  /// [SpeechSynthesisUtterance.lang] setting.
  external SpeechSynthesisVoice? get voice;
  external set voice(SpeechSynthesisVoice? value);

  /// The **`volume`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the volume that the utterance will be spoken at.
  ///
  /// If not set, the default value 1 will be used.
  external double get volume;
  external set volume(num value);

  /// The **`rate`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the speed at which the utterance will be spoken at.
  ///
  /// If unset, a default value of 1 will be used.
  external double get rate;
  external set rate(num value);

  /// The **`pitch`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the pitch at which the utterance will be spoken at.
  ///
  /// If unset, a default value of 1 will be used.
  external double get pitch;
  external set pitch(num value);
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onend;
  external set onend(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external EventHandler get onmark;
  external set onmark(EventHandler value);
  external EventHandler get onboundary;
  external set onboundary(EventHandler value);
}

/// The **`SpeechSynthesisVoice`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a voice that the system supports.
/// Every `SpeechSynthesisVoice` has its own relative speech service including
/// information about language, name and URI.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice).
extension type SpeechSynthesisVoice._(JSObject _) implements JSObject {
  /// The **`voiceURI`** read-only property of the
  /// [SpeechSynthesisVoice] interface returns the type of URI and location of
  /// the speech synthesis service for this voice.
  external String get voiceURI;

  /// The **`name`** read-only property of the
  /// [SpeechSynthesisVoice] interface returns a human-readable name that
  /// represents the voice.
  external String get name;

  /// The **`lang`** read-only property of the [SpeechSynthesisVoice] interface
  /// returns a BCP 47 language tag indicating the language of the voice.
  external String get lang;

  /// The **`localService`** read-only property of the
  /// [SpeechSynthesisVoice] interface returns a boolean value
  /// indicating whether the voice is supplied by a local speech synthesizer
  /// service
  /// (`true`), or a remote speech synthesizer service (`false`.)
  ///
  /// This property is provided to allow differentiation in the case that some
  /// voice options
  /// are provided by a remote service; it is possible that remote voices might
  /// have extra
  /// latency, bandwidth or cost associated with them, so such distinction may
  /// be useful.
  external bool get localService;
  @JS('default')
  external bool get default_;
}
