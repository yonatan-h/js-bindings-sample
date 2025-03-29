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

import 'background_sync.dart';
import 'dom.dart';
import 'fetch.dart';
import 'html.dart';
import 'notifications.dart';
import 'push_api.dart';

typedef ServiceWorkerState = String;
typedef ServiceWorkerUpdateViaCache = String;

/// The **`ServiceWorker`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides a reference to a service worker. Multiple  (e.g. pages, workers,
/// etc.) can be associated with the same service worker, each through a unique
/// `ServiceWorker` object.
///
/// A `ServiceWorker` object is available via a number of properties:
///
/// - [ServiceWorkerRegistration.active]
/// - [ServiceWorkerGlobalScope.serviceWorker]
/// - [ServiceWorkerContainer.controller] — when the service worker is in
///   `activating` or `activated` state
/// - [ServiceWorkerRegistration.installing] — when the service worker is in
///   `installing` state
/// - [ServiceWorkerRegistration.waiting] — when the service worker is in
///   `installed` state
///
/// The [ServiceWorker.state] property and
/// [`statechanged` event](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/statechange_event)
/// can be used to check and observe changes in the lifecycle-state of the
/// object's associated service worker.
/// Related lifecycle events, such as
/// [`install`](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/install_event)
/// and
/// [`activate`](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/activate_event)
/// are fired at the service worker itself.
///
/// Service workers allow static import of
/// [ECMAScript modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules),
/// if supported, using
/// [`import`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import).
/// Dynamic import is disallowed by the specification — calling
/// [`import()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import)
/// will throw.
///
/// Service workers can only be registered in the Window scope in some or all
/// browsers, because the `ServiceWorker` object is not exposed to
/// [DedicatedWorkerGlobalScope] and [SharedWorkerGlobalScope].
/// Check the [browser compatibility](#browser_compatibility) for information.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker).
extension type ServiceWorker._(JSObject _) implements EventTarget, JSObject {
  /// The **`postMessage()`** method of the [ServiceWorker] interface sends a
  /// message to the worker. The first parameter is the data to send to the
  /// worker. The data may be any JavaScript object which can be handled by the
  /// [structured clone algorithm](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
  ///
  /// The service worker can send back information to its clients by using the
  /// [Client.postMessage] method. The message will not be sent back to this
  /// `ServiceWorker` object but to the associated [ServiceWorkerContainer]
  /// available via [navigator.serviceWorker].
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);

  /// Returns the `ServiceWorker` serialized script URL defined as part of
  /// [`ServiceWorkerRegistration`](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration).
  /// Must be on the same origin as the document that registers the
  /// `ServiceWorker`.
  external String get scriptURL;

  /// The **`state`** read-only property of the
  /// [ServiceWorker] interface returns a string representing the current state
  /// of the service worker. It can be one of the following values: `parsed`,
  /// `installing`,
  /// `installed`, `activating`, `activated`, or
  /// `redundant`.
  external ServiceWorkerState get state;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

/// The **`ServiceWorkerRegistration`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the service worker registration. You register a service worker to
/// control one or more pages that share the same origin.
///
/// The lifetime of a service worker registration is beyond that of the
/// `ServiceWorkerRegistration` objects that represent them within the lifetime
/// of their corresponding service worker clients. The browser maintains a
/// persistent list of active `ServiceWorkerRegistration` objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration).
extension type ServiceWorkerRegistration._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`update()`** method of the
  /// [ServiceWorkerRegistration] interface attempts to update the service
  /// worker. It fetches the worker's script URL, and if the new worker is not
  /// byte-by-byte
  /// identical to the current worker, it installs the new worker. The fetch of
  /// the worker
  /// bypasses any browser caches if the previous fetch occurred over 24 hours
  /// ago.
  external JSPromise<JSAny?> update();

  /// The **`unregister()`** method of the
  /// [ServiceWorkerRegistration] interface unregisters the service worker
  /// registration and returns a `Promise`. The promise will resolve to
  /// `false` if no registration was found, otherwise it resolves to
  /// `true` irrespective of whether unregistration happened or not (it may not
  /// unregister if someone else just called [ServiceWorkerContainer.register]
  /// with the same scope.) The service worker will finish any ongoing
  /// operations before it is
  /// unregistered.
  external JSPromise<JSBoolean> unregister();

  /// The **`showNotification()`** method of the
  /// [ServiceWorkerRegistration] interface creates a notification on an active
  /// service worker.
  external JSPromise<JSAny?> showNotification(
    String title, [
    NotificationOptions options,
  ]);

  /// The **`getNotifications()`** method of
  /// the [ServiceWorkerRegistration] interface returns a list of the
  /// notifications in the order that they were created from the current origin
  /// via the
  /// current service worker registration. Origins can have many active but
  /// differently-scoped service worker registrations. Notifications created by
  /// one service
  /// worker on the same origin will not be available to other active service
  /// workers on
  /// that same origin.
  external JSPromise<JSArray<Notification>> getNotifications(
      [GetNotificationOptions filter]);

  /// The **`installing`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a service worker whose
  /// [ServiceWorker.state] is `installing`. This property is
  /// initially set to `null`.
  external ServiceWorker? get installing;

  /// The **`waiting`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a service worker whose
  /// [ServiceWorker.state] is `installed`. This property is initially
  /// set to `null`.
  external ServiceWorker? get waiting;

  /// The **`active`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a service worker whose
  /// [ServiceWorker.state] is `activating` or `activated`.
  /// This property is initially set to `null`.
  ///
  /// An active worker controls a [Client] if the client's URL
  /// falls within the scope of the registration (the `scope` option set when
  /// [ServiceWorkerContainer.register] is first called.)
  ///
  /// > [!NOTE]
  /// > Once an active worker is `activating`, neither a
  /// > runtime script error nor a force termination of the active worker
  /// > prevents the active
  /// > worker from getting `activated`.
  external ServiceWorker? get active;

  /// The **`navigationPreload`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns the
  /// [NavigationPreloadManager] associated with the current service worker
  /// registration.
  ///
  /// The returned object allows resources managed by a service worker to be
  /// preemptively downloaded in parallel with service worker boot up.
  external NavigationPreloadManager get navigationPreload;

  /// The **`scope`** read-only property of the [ServiceWorkerRegistration]
  /// interface returns a string representing a URL that defines a service
  /// worker's registration scope; that is, the range of URLs a service worker
  /// can control. This is set using the `scope` parameter specified in the call
  /// to [ServiceWorkerContainer.register] which registered the service worker.
  external String get scope;

  /// The **`updateViaCache`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns the value of the setting
  /// used to determine the circumstances in which the browser will consult the
  /// HTTP cache when it tries to update the service worker or any scripts that
  /// are imported via [WorkerGlobalScope.importScripts].
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external EventHandler get onupdatefound;
  external set onupdatefound(EventHandler value);

  /// The **`sync`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a reference to the
  /// [SyncManager] interface, which manages background synchronization
  /// processes.
  external SyncManager get sync;

  /// The **`pushManager`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a reference to the
  /// [PushManager] interface for managing push subscriptions; this includes
  /// support for subscribing, getting an active subscription, and accessing
  /// push permission
  /// status.
  external PushManager get pushManager;
}

/// The **`ServiceWorkerContainer`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides an object representing the service worker as an overall unit in the
/// network ecosystem, including facilities to register, unregister and update
/// service workers, and access the state of service workers and their
/// registrations.
///
/// Most importantly, it exposes the [ServiceWorkerContainer.register] method
/// used to register service workers, and the
/// [ServiceWorkerContainer.controller] property used to determine whether or
/// not the current page is actively controlled.
///
/// `ServiceWorkerContainer` objects are exposed in the Window scope through
/// [Navigator.serviceWorker] and in workers using
/// [WorkerNavigator.serviceWorker] (if supported — check
/// [browser compatibility](#browser_compatibility)).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer).
extension type ServiceWorkerContainer._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`register()`** method of the [ServiceWorkerContainer] interface
  /// creates or updates a [ServiceWorkerRegistration] for the given scope.
  /// If successful, the registration associates the provided script URL to a
  /// _scope_, which is subsequently used for matching documents to a specific
  /// service worker.
  ///
  /// A single registration is created for each unique scope.
  /// If `register()` is called for a scope that has an existing registration,
  /// the registration is updated with any changes to the scriptURL or options.
  /// If there are no changes, then the existing registration is returned.
  /// Note that calling `register()` with the same scope and `scriptURL` does
  /// not restart the installation process.
  /// You can therefore call this method unconditionally from a controlled page:
  /// you don't need to first check whether there's an active registration or
  /// service worker.
  ///
  /// A document can potentially be within the scope of several registrations
  /// with different service workers and options.
  /// The browser will associate the document with the matching registration
  /// that has the most specific scope.
  /// This ensures that only one service worker runs for each document.
  ///
  /// > [!NOTE]
  /// > It is generally safer not to define registrations that have overlapping
  /// > scopes.
  external JSPromise<ServiceWorkerRegistration> register(
    JSAny scriptURL, [
    RegistrationOptions options,
  ]);

  /// The **`getRegistration()`** method of the
  /// [ServiceWorkerContainer] interface gets a
  /// [ServiceWorkerRegistration] object whose scope URL matches the provided
  /// client URL. The method returns a `Promise` that resolves to
  /// a [ServiceWorkerRegistration] or `undefined`.
  external JSPromise<ServiceWorkerRegistration?> getRegistration(
      [String clientURL]);

  /// The **`getRegistrations()`** method of the
  /// [ServiceWorkerContainer] interface gets all
  /// [ServiceWorkerRegistration]s associated with a
  /// `ServiceWorkerContainer`, in an array. The method returns a
  /// `Promise` that resolves to an array of
  /// [ServiceWorkerRegistration].
  external JSPromise<JSArray<ServiceWorkerRegistration>> getRegistrations();

  /// The **`startMessages()`** method of
  /// the [ServiceWorkerContainer] interface explicitly starts the flow of
  /// messages being dispatched from a service worker to pages under its control
  /// (e.g. sent
  /// via [Client.postMessage]). This can be used to react to sent messages
  /// earlier, even before that page's content has finished loading.
  external void startMessages();

  /// The **`controller`** read-only
  /// property of the [ServiceWorkerContainer] interface returns a
  /// [ServiceWorker] object if its state is `activating` or
  /// `activated` (the same object returned by
  /// [ServiceWorkerRegistration.active]). This property returns
  /// `null` if the request is a force refresh (_Shift_ + refresh) or if
  /// there is no active worker.
  external ServiceWorker? get controller;

  /// The **`ready`** read-only property of
  /// the [ServiceWorkerContainer] interface provides a way of delaying code
  /// execution until a service worker is active. It returns a `Promise` that
  /// will never reject, and which waits indefinitely until
  /// the [ServiceWorkerRegistration] associated with the current page has
  /// an [ServiceWorkerRegistration.active] worker. Once that
  /// condition is met, it resolves with
  /// the [ServiceWorkerRegistration].
  external JSPromise<ServiceWorkerRegistration> get ready;
  external EventHandler get oncontrollerchange;
  external set oncontrollerchange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}
extension type RegistrationOptions._(JSObject _) implements JSObject {
  external factory RegistrationOptions({
    String scope,
    WorkerType type,
    ServiceWorkerUpdateViaCache updateViaCache,
  });

  external String get scope;
  external set scope(String value);
  external WorkerType get type;
  external set type(WorkerType value);
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external set updateViaCache(ServiceWorkerUpdateViaCache value);
}

/// The **`NavigationPreloadManager`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides methods for managing the preloading of resources in parallel with
/// service worker bootup.
///
/// If supported, an object of this type is returned by
/// [ServiceWorkerRegistration.navigationPreload].
/// The result of a preload fetch request is waited on using the promise
/// returned by [FetchEvent.preloadResponse].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager).
extension type NavigationPreloadManager._(JSObject _) implements JSObject {
  /// The **`enable()`** method of the [NavigationPreloadManager] interface is
  /// used to enable preloading of resources managed by the service worker.
  /// It returns a promise that resolves with `undefined`.
  ///
  /// The method should be called in the service worker's `activate` event
  /// handler, which ensures it is called before any `fetch` event handler can
  /// fire.
  external JSPromise<JSAny?> enable();

  /// The **`disable()`** method of the [NavigationPreloadManager] interface
  /// halts the automatic preloading of service-worker-managed resources
  /// previously started using [NavigationPreloadManager.enable]
  /// It returns a promise that resolves with `undefined`.
  ///
  /// The method may be called in the service worker's `activate` event handler
  /// (before the `fetch` event handler can be called).
  external JSPromise<JSAny?> disable();

  /// The **`setHeaderValue()`** method of the [NavigationPreloadManager]
  /// interface sets the value of the  header that will be sent with requests
  /// resulting from a [Window.fetch] operation made during service worker
  /// navigation preloading.
  /// It returns an empty `Promise` that resolves with `undefined`.
  ///
  /// The presence of the  header in preloading requests allows servers to
  /// configure the returned resource differently for preloading fetch requests
  /// than from normal fetch requests.
  /// The default directive is set to `true`: this method allows the possibility
  /// of configuring multiple different responses to preload requests.
  ///
  /// > [!NOTE]
  /// > If a different response may result from setting this header, the server
  /// > must set `Vary: Service-Worker-Navigation-Preload` to ensure that the
  /// > different responses are cached.
  external JSPromise<JSAny?> setHeaderValue(String value);

  /// The **`getState()`** method of the [NavigationPreloadManager] interface
  /// returns a `Promise` that resolves to an object with properties that
  /// indicate whether preload is enabled and what value will be sent in the
  /// HTTP header.
  external JSPromise<NavigationPreloadState> getState();
}
extension type NavigationPreloadState._(JSObject _) implements JSObject {
  external factory NavigationPreloadState({
    bool enabled,
    String headerValue,
  });

  external bool get enabled;
  external set enabled(bool value);
  external String get headerValue;
  external set headerValue(String value);
}

/// The **`Cache`** interface provides a persistent storage mechanism for
/// [Request] / [Response] object pairs that are cached in long lived memory.
/// How long a `Cache` object lives is browser dependent, but a single origin's
/// scripts can typically rely on the presence of a previously populated `Cache`
/// object. Note that the `Cache` interface is exposed to windowed scopes as
/// well as workers. You don't have to use it in conjunction with service
/// workers, even though it is defined in the service worker spec.
///
/// An origin can have multiple, named `Cache` objects. You are responsible for
/// implementing how your script (e.g. in a [ServiceWorker]) handles `Cache`
/// updates. Items in a `Cache` do not get updated unless explicitly requested;
/// they don't expire unless deleted. Use [CacheStorage.open] to open a specific
/// named `Cache` object and then call any of the `Cache` methods to maintain
/// the `Cache`.
///
/// You are also responsible for periodically purging cache entries. Each
/// browser has a hard limit on the amount of cache storage that a given origin
/// can use. `Cache` quota usage estimates are available via the
/// [StorageManager.estimate] method. The browser does its best to manage disk
/// space, but it may delete the `Cache` storage for an origin. The browser will
/// generally delete all of the data for an origin or none of the data for an
/// origin. Make sure to version caches by name and use the caches only from the
/// version of the script that they can safely operate on. See
/// [Deleting old caches](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API/Using_Service_Workers#deleting_old_caches)
/// for more information.
///
/// > [!NOTE]
/// > The key matching algorithm depends on the
/// > [VARY header](https://www.fastly.com/blog/best-practices-using-vary-header)
/// > in the value. So matching a new key requires looking at both key and value
/// > for entries in the `Cache` object.
///
/// > [!NOTE]
/// > The caching API doesn't honor HTTP caching headers.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Cache).
extension type Cache._(JSObject _) implements JSObject {
  /// The **`match()`** method of the [Cache] interface returns a `Promise` that
  /// resolves to the [Response] associated with the first matching request in
  /// the [Cache] object.
  /// If no match is found, the `Promise` resolves to `undefined`.
  external JSPromise<Response?> match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);

  /// The **`matchAll()`** method of the [Cache]
  /// interface returns a `Promise` that resolves to an array of all matching
  /// responses in the [Cache] object.
  external JSPromise<JSArray<Response>> matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);

  /// The **`add()`** method of the [Cache] interface takes a URL, retrieves it,
  /// and adds the resulting response object to the given cache.
  ///
  /// The `add()` method is functionally equivalent to the following:
  ///
  /// ```js
  /// fetch(url).then((response) => {
  ///   if (!response.ok) {
  ///     throw new TypeError("bad response status");
  ///   }
  ///   return cache.put(url, response);
  /// });
  /// ```
  ///
  /// For more complex operations, you'll need to use [Cache.put] directly.
  ///
  /// > **Note:** `add()` will overwrite any key/value pair previously stored in
  /// > the cache that matches the request.
  external JSPromise<JSAny?> add(RequestInfo request);

  /// The **`addAll()`** method of the [Cache] interface takes an array of URLs,
  /// retrieves them, and adds the resulting response objects to the given
  /// cache. The request objects created during retrieval become keys to the
  /// stored response operations.
  ///
  /// > **Note:** `addAll()` will overwrite any key/value pairs
  /// > previously stored in the cache that match the request, but will fail if
  /// > a
  /// > resulting `put()` operation would overwrite a previous cache entry
  /// > stored by the same `addAll()` method.
  external JSPromise<JSAny?> addAll(JSArray<RequestInfo> requests);

  /// The **`put()`** method of the
  /// [Cache] interface allows key/value pairs to be added to the current
  /// [Cache] object.
  ///
  /// Often, you will just want to [Window.fetch]
  /// one or more requests, then add the result straight to your cache. In such
  /// cases you are
  /// better off using
  /// [Cache.add]/[Cache.addAll], as
  /// they are shorthand functions for one or more of these operations.
  ///
  /// ```js
  /// fetch(url).then((response) => {
  ///   if (!response.ok) {
  ///     throw new TypeError("Bad response status");
  ///   }
  ///   return cache.put(url, response);
  /// });
  /// ```
  ///
  /// > **Note:** `put()` will overwrite any key/value pair
  /// > previously stored in the cache that matches the request.
  ///
  /// > **Note:** [Cache.add]/[Cache.addAll] do not
  /// > cache responses with `Response.status` values that are not in the 200
  /// > range, whereas `Cache.put` lets you store any request/response pair. As
  /// > a
  /// > result, [Cache.add]/[Cache.addAll] can't be used to store
  /// > opaque responses, whereas `Cache.put` can.
  external JSPromise<JSAny?> put(
    RequestInfo request,
    Response response,
  );

  /// The **`delete()`** method of the [Cache] interface finds the [Cache] entry
  /// whose key is the request, and if found, deletes the [Cache] entry and
  /// returns a `Promise` that resolves to `true`.
  /// If no [Cache] entry is found, it resolves to `false`.
  external JSPromise<JSBoolean> delete(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);

  /// The **`keys()`** method of the [Cache] interface returns a
  /// `Promise` that resolves to an array of [Request] objects
  /// representing the keys of the [Cache].
  ///
  /// The requests are returned in the same order that they were inserted.
  ///
  /// > [!NOTE]
  /// > Requests with duplicate URLs but different headers can be
  /// > returned if their responses have the `VARY` header set on them.
  external JSPromise<JSArray<Request>> keys([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
}
extension type CacheQueryOptions._(JSObject _) implements JSObject {
  external factory CacheQueryOptions({
    bool ignoreSearch,
    bool ignoreMethod,
    bool ignoreVary,
  });

  external bool get ignoreSearch;
  external set ignoreSearch(bool value);
  external bool get ignoreMethod;
  external set ignoreMethod(bool value);
  external bool get ignoreVary;
  external set ignoreVary(bool value);
}

/// The **`CacheStorage`** interface represents the storage for [Cache] objects.
///
/// The interface:
///
/// - Provides a master directory of all the named caches that can be accessed
///   by a [ServiceWorker] or other type of worker or [window] scope (you're not
///   limited to only using it with service workers).
/// - Maintains a mapping of string names to corresponding [Cache] objects.
///
/// Use [CacheStorage.open] to obtain a [Cache] instance.
///
/// Use [CacheStorage.match] to check if a given [Request] is a key in any of
/// the [Cache] objects that the `CacheStorage` object tracks.
///
/// You can access `CacheStorage` through the [Window.caches] property in
/// windows or through the [WorkerGlobalScope.caches] property in workers.
///
/// > **Note:** `CacheStorage` always rejects with a `SecurityError` on
/// > untrusted origins (i.e. those that aren't using HTTPS, although this
/// > definition will likely become more complex in the future.) When testing on
/// > Firefox, you can get around this by checking the **Enable Service Workers
/// > over HTTP (when toolbox is open)** option in the Firefox DevTools
/// > options/gear menu. Furthermore, because `CacheStorage` requires
/// > file-system access, it may be unavailable in private mode in Firefox.
///
/// > **Note:** [CacheStorage.match] is a convenience method. Equivalent
/// > functionality to match a cache entry can be implemented by returning an
/// > array of cache names from [CacheStorage.keys], opening each cache with
/// > [CacheStorage.open], and matching the one you want with [Cache.match].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage).
extension type CacheStorage._(JSObject _) implements JSObject {
  /// The **`match()`** method of the [CacheStorage] interface checks if a given
  /// [Request] or URL string is a key for a stored [Response].
  /// This method returns a `Promise` for a [Response], or a `Promise` which
  /// resolves to `undefined` if no match is found.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  ///
  /// `Cache` objects are searched in creation order.
  ///
  /// > **Note:** `caches.match()` is a convenience method.
  /// > Equivalent functionality is to call [cache.match] on each cache (in the
  /// > order returned by [CacheStorage.keys]) until a [Response] is returned.
  external JSPromise<Response?> match(
    RequestInfo request, [
    MultiCacheQueryOptions options,
  ]);

  /// The **`has()`** method of the [CacheStorage]
  /// interface returns a `Promise` that resolves to `true` if a
  /// [Cache] object matches the `cacheName`.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  external JSPromise<JSBoolean> has(String cacheName);

  /// The **`open()`** method of the
  /// [CacheStorage] interface returns a `Promise` that resolves to
  /// the [Cache] object matching the `cacheName`.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  ///
  /// > [!NOTE]
  /// > If the specified [Cache] does not exist, a new
  /// > cache is created with that `cacheName` and a `Promise` that
  /// > resolves to this new [Cache] object is returned.
  external JSPromise<Cache> open(String cacheName);

  /// The **`delete()`** method of the [CacheStorage] interface finds the
  /// [Cache] object matching the `cacheName`, and if found, deletes the [Cache]
  /// object and returns a `Promise` that resolves to `true`.
  /// If no [Cache] object is found, it resolves to `false`.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  external JSPromise<JSBoolean> delete(String cacheName);

  /// The **`keys()`** method of the [CacheStorage] interface returns a
  /// `Promise` that will resolve with an array containing strings corresponding
  /// to all of the named [Cache] objects tracked by the [CacheStorage] object
  /// in the order they were created.
  /// Use this method to iterate over a list of all [Cache] objects.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  external JSPromise<JSArray<JSString>> keys();
}
extension type MultiCacheQueryOptions._(JSObject _)
    implements CacheQueryOptions, JSObject {
  external factory MultiCacheQueryOptions({
    bool ignoreSearch,
    bool ignoreMethod,
    bool ignoreVary,
    String cacheName,
  });

  external String get cacheName;
  external set cacheName(String value);
}
