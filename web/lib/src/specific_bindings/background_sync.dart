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

/// The **`SyncManager`** interface of the [Background Synchronization API]
/// provides an interface for registering and listing sync registrations.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SyncManager).
extension type SyncManager._(JSObject _) implements JSObject {
  /// The **`register()`** method of the [SyncManager] interface registers a
  /// synchronization event, triggering a [ServiceWorkerGlobalScope.sync_event]
  /// event inside the associated service worker as soon as network connectivity
  /// is available.
  external JSPromise<JSAny?> register(String tag);

  /// The **`getTags()`** method of the
  /// [SyncManager] interface returns a list of developer-defined identifiers
  /// for
  /// `SyncManager` registrations.
  external JSPromise<JSArray<JSString>> getTags();
}
