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
import 'media_source.dart';

typedef EventHandler = EventHandlerNonNull?;
typedef EventHandlerNonNull = JSFunction;

/// The **`AudioTrackList`** interface is used to represent a list of the audio
/// tracks contained within a given HTML media element, with each track
/// represented by a separate [AudioTrack] object in the list.
///
/// Retrieve an instance of this object with [HTMLMediaElement.audioTracks]. The
/// individual tracks can be accessed using array syntax.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList).
extension type AudioTrackList._(JSObject _) implements EventTarget, JSObject {
  external AudioTrack operator [](int index);

  /// The **[AudioTrackList]** method **`getTrackById()`** returns the first
  /// [AudioTrack] object from the track list whose [AudioTrack.id] matches the
  /// specified string.
  /// This lets you find a specified track if you know its ID string.
  external AudioTrack? getTrackById(String id);

  /// The read-only **[AudioTrackList]**
  /// property **`length`** returns the number of entries in the
  /// `AudioTrackList`, each of which is an [AudioTrack]
  /// representing one audio track in the media element. A value of 0 indicates
  /// that
  /// there are no audio tracks in the media.
  external int get length;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

/// The **`AudioTrack`** interface represents a single audio track from one of
/// the HTML media elements, `audio` or `video`.
///
/// The most common use for accessing an `AudioTrack` object is to toggle its
/// [AudioTrack.enabled] property in order to mute and unmute the track.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack).
extension type AudioTrack._(JSObject _) implements JSObject {
  /// The **`id`** property contains a
  /// string which uniquely identifies the track represented by the
  /// **[AudioTrack]**.
  ///
  /// This ID can be used with the
  /// [AudioTrackList.getTrackById] method to locate a specific track within
  /// the media associated with a media element. The track ID can also be used
  /// as the fragment of a URL that loads the specific track
  /// (if the media supports media fragments).
  external String get id;

  /// The **`kind`** property contains a
  /// string indicating the category of audio contained in the
  /// **[AudioTrack]**.
  ///
  /// The `kind` can be used
  /// to determine the scenarios in which specific tracks should be enabled or
  /// disabled. See
  /// [Audio track kind strings](#audio_track_kind_strings) for a list of the
  /// kinds available for audio tracks.
  external String get kind;

  /// The read-only **[AudioTrack]**
  /// property **`label`** returns a string specifying the audio
  /// track's human-readable label, if one is available; otherwise, it returns
  /// an empty
  /// string.
  external String get label;

  /// The read-only **[AudioTrack]**
  /// property **`language`** returns a string identifying the
  /// language used in the audio track.
  ///
  /// For tracks that include multiple languages
  /// (such as a movie in English in which a few lines are spoken in other
  /// languages), this
  /// should be the video's primary language.
  external String get language;

  /// The **[AudioTrack]** property
  /// **`enabled`** specifies whether or not the described audio
  /// track is currently enabled for use. If the track is disabled by setting
  /// `enabled` to `false`, the track is muted and does not produce
  /// audio.
  external bool get enabled;
  external set enabled(bool value);

  /// The read-only **[AudioTrack]**
  /// property **`sourceBuffer`** returns the
  /// [SourceBuffer] that created the track, or null if the track was not
  /// created by a [SourceBuffer] or the [SourceBuffer] has been
  /// removed from the [MediaSource.sourceBuffers] attribute of its parent
  /// media source.
  external SourceBuffer? get sourceBuffer;
}

/// The **`VideoTrackList`** interface is used to represent a list of the video
/// tracks contained within a `video` element, with each track represented by a
/// separate [VideoTrack] object in the list.
///
/// Retrieve an instance of this object with [HTMLMediaElement.videoTracks]. The
/// individual tracks can be accessed using array syntax or functions such as
/// `forEach()` for example.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList).
extension type VideoTrackList._(JSObject _) implements EventTarget, JSObject {
  external VideoTrack operator [](int index);

  /// The **[VideoTrackList]** method
  /// **`getTrackById()`** returns the first
  /// [VideoTrack] object from the track list whose [VideoTrack.id] matches the
  /// specified string.
  ///
  /// This lets you find a specified track if
  /// you know its ID string.
  external VideoTrack? getTrackById(String id);

  /// The read-only **[VideoTrackList]**
  /// property **`length`** returns the number of entries in the
  /// `VideoTrackList`, each of which is a [VideoTrack] representing
  /// one video track in the media element.
  ///
  /// A value of 0 indicates that there are no
  /// video tracks in the media.
  external int get length;

  /// The read-only **[VideoTrackList]**
  /// property **`selectedIndex`** returns the index of the
  /// currently selected track, if any, or `-1` otherwise.
  external int get selectedIndex;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

/// The **`VideoTrack`** interface represents a single video track from a
/// `video` element.
///
/// The most common use for accessing a `VideoTrack` object is to toggle its
/// [VideoTrack.selected] property in order to make it the active video track
/// for its `video` element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack).
extension type VideoTrack._(JSObject _) implements JSObject {
  /// The **`id`** property contains a
  /// string which uniquely identifies the track represented by the
  /// **[VideoTrack]**.
  ///
  /// This ID can be used with the
  /// [VideoTrackList.getTrackById] method to locate a specific track within
  /// the media associated with a media element.
  ///
  /// The track ID can also be used as the fragment of a URL that loads the
  /// specific track
  /// (if the media supports media fragments).
  external String get id;

  /// The **`kind`** property contains a
  /// string indicating the category of video contained in the
  /// **[VideoTrack]**.
  ///
  /// The `kind` can be used
  /// to determine the scenarios in which specific tracks should be enabled or
  /// disabled. See
  /// [Video track kind strings](#video_track_kind_strings) for a list of the
  /// kinds available for video tracks.
  external String get kind;

  /// The read-only **[VideoTrack]**
  /// property **`label`** returns a string specifying the video
  /// track's human-readable label, if one is available; otherwise, it returns
  /// an empty
  /// string.
  external String get label;

  /// The read-only **[VideoTrack]**
  /// property **`language`** returns a string identifying the
  /// language used in the video track.
  ///
  /// For tracks that include multiple languages
  /// (such as a movie in English in which a few lines are spoken in other
  /// languages), this
  /// should be the video's primary language.
  external String get language;

  /// The **[VideoTrack]** property
  /// **`selected`** controls whether or not a particular video
  /// track is active.
  external bool get selected;
  external set selected(bool value);

  /// The read-only **[VideoTrack]**
  /// property **`sourceBuffer`** returns the
  /// [SourceBuffer] that created the track, or null if the track was not
  /// created by a [SourceBuffer] or the [SourceBuffer] has been
  /// removed from the [MediaSource.sourceBuffers] attribute of its parent
  /// media source.
  external SourceBuffer? get sourceBuffer;
}

/// When loading a media resource for use by an `audio` or `video` element, the
/// **`TimeRanges`** interface is used for representing the time ranges of the
/// media resource that have been buffered, the time ranges that have been
/// played, and the time ranges that are seekable.
///
/// A `TimeRanges` object includes one or more ranges of time, each specified by
/// a starting time offset and an ending time offset. You reference each time
/// range by using the `start()` and `end()` methods, passing the index number
/// of the time range you want to retrieve.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges).
extension type TimeRanges._(JSObject _) implements JSObject {
  /// The **`start()`** method of the [TimeRanges] interface returns the time
  /// offset (in seconds) at which a specified time range begins.
  external double start(int index);

  /// The **`end()`** method of the [TimeRanges] interface returns the time
  /// offset (in seconds) at which a specified time range ends.
  external double end(int index);

  /// The **`TimeRanges.length`** read-only property returns the
  /// number of ranges in the object.
  external int get length;
}
