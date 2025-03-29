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

extension type MIDIOptions._(JSObject _) implements JSObject {
  external factory MIDIOptions({
    bool sysex,
    bool software,
  });

  external bool get sysex;
  external set sysex(bool value);
  external bool get software;
  external set software(bool value);
}

/// The **`MIDIInputMap`** read-only interface of the
/// [Web MIDI API](https://developer.mozilla.org/en-US/docs/Web/API/Web_MIDI_API)
/// provides the set of MIDI input ports that are currently available.
///
/// A `MIDIInputMap` instance is a read-only
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is the ID string for MIDI input, and the associated value
/// is the corresponding [MIDIInput] object.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MIDIInputMap).
extension type MIDIInputMap._(JSObject _) implements JSObject {}

/// The **`MIDIOutputMap`** read-only interface of the
/// [Web MIDI API](https://developer.mozilla.org/en-US/docs/Web/API/Web_MIDI_API)
/// provides the set of MIDI output ports that are currently available.
///
/// A `MIDIOutputMap` instance is a read-only
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is the ID string for MIDI output, and the associated value
/// is the corresponding [MIDIOutput] object.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MIDIOutputMap).
extension type MIDIOutputMap._(JSObject _) implements JSObject {}

/// The **`MIDIAccess`** interface of the
/// [Web MIDI API](https://developer.mozilla.org/en-US/docs/Web/API/Web_MIDI_API)
/// provides methods for listing MIDI input and output devices, and obtaining
/// access to those devices.
///
/// `MIDIAccess` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MIDIAccess).
extension type MIDIAccess._(JSObject _) implements EventTarget, JSObject {
  /// The **`inputs`** read-only property of the [MIDIAccess] interface provides
  /// access to any available MIDI input ports.
  external MIDIInputMap get inputs;

  /// The **`outputs`** read-only property of the [MIDIAccess] interface
  /// provides access to any available MIDI output ports.
  external MIDIOutputMap get outputs;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);

  /// The **`sysexEnabled`** read-only property of the [MIDIAccess] interface
  /// indicates whether system exclusive support is enabled on the current
  /// MIDIAccess instance.
  external bool get sysexEnabled;
}
