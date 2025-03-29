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

import 'battery_status.dart';
import 'clipboard_apis.dart';
import 'cookie_store.dart';
import 'credential_management.dart';
import 'css_typed_om.dart';
import 'cssom.dart';
import 'cssom_view.dart';
import 'dom.dart';
import 'encrypted_media.dart';
import 'fetch.dart';
import 'fileapi.dart';
import 'gamepad.dart';
import 'geolocation.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'indexeddb.dart';
import 'media_capabilities.dart';
import 'media_playback_quality.dart';
import 'media_source.dart';
import 'mediacapture_streams.dart';
import 'mediasession.dart';
import 'netinfo.dart';
import 'permissions.dart';
import 'picture_in_picture.dart';
import 'remote_playback.dart';
import 'requestidlecallback.dart';
import 'scheduling_apis.dart';
import 'screen_wake_lock.dart';
import 'selection_api.dart';
import 'service_workers.dart';
import 'speech_api.dart';
import 'storage.dart';
import 'trusted_types.dart';
import 'vibration.dart';
import 'video_rvfc.dart';
import 'web_locks.dart';
import 'web_share.dart';
import 'webcryptoapi.dart';
import 'webidl.dart';
import 'webmidi.dart';

typedef HTMLOrSVGScriptElement = JSObject;
typedef MediaProvider = JSObject;
typedef RenderingContext = JSObject;
typedef HTMLOrSVGImageElement = JSObject;
typedef CanvasImageSource = JSObject;
typedef OffscreenRenderingContext = JSObject;
typedef EventHandler = EventHandlerNonNull?;
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull?;
typedef OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull?;
typedef TimerHandler = JSAny;
typedef ImageBitmapSource = JSObject;
typedef BlobCallback = JSFunction;
typedef CustomElementConstructor = JSFunction;
typedef EventHandlerNonNull = JSFunction;
typedef OnErrorEventHandlerNonNull = JSFunction;
typedef OnBeforeUnloadEventHandlerNonNull = JSFunction;
typedef FrameRequestCallback = JSFunction;
typedef DocumentReadyState = String;
typedef DocumentVisibilityState = String;
typedef CanPlayTypeResult = String;
typedef TextTrackMode = String;
typedef TextTrackKind = String;
typedef PredefinedColorSpace = String;
typedef CanvasColorType = String;
typedef CanvasFillRule = String;
typedef ImageSmoothingQuality = String;
typedef CanvasLineCap = String;
typedef CanvasLineJoin = String;
typedef CanvasTextAlign = String;
typedef CanvasTextBaseline = String;
typedef CanvasDirection = String;
typedef CanvasFontKerning = String;
typedef CanvasFontStretch = String;
typedef CanvasFontVariantCaps = String;
typedef CanvasTextRendering = String;
typedef OffscreenRenderingContextId = String;
typedef ScrollRestoration = String;
typedef ImageOrientation = String;
typedef PremultiplyAlpha = String;
typedef ColorSpaceConversion = String;
typedef ResizeQuality = String;
typedef WorkerType = String;

/// The **`HTMLAllCollection`** interface represents a collection of _all_ of
/// the document's elements, accessible by index (like an array) and by the
/// element's
/// [`id`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id).
/// It is returned by the [document.all] property.
///
/// `HTMLAllCollection` has a very similar shape to [HTMLCollection], but there
/// are many subtle behavior differences — for example, `HTMLAllCollection` can
/// be called as a function, and its `item()` method can be called with a string
/// representing an element's `id` or `name` attribute.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection).
extension type HTMLAllCollection._(JSObject _) implements JSObject {
  external Element operator [](int index);

  /// The **`namedItem()`** method of the [HTMLAllCollection] interface returns
  /// the first [Element] in the collection whose `id` or `name` attribute
  /// matches the specified name, or `null` if no element matches.
  external JSObject? namedItem(String name);

  /// The **`item()`** method of the [HTMLAllCollection] interface returns the
  /// element located at the specified offset into the collection, or the
  /// element with the specified value for its `id` or `name` attribute.
  external JSObject? item([String nameOrIndex]);

  /// The **`HTMLAllCollection.length`** property returns the number of items in
  /// this [HTMLAllCollection].
  external int get length;
}

/// The **`HTMLFormControlsCollection`** interface represents a _collection_ of
/// HTML _form control elements_, returned by the [HTMLFormElement] interface's
/// [HTMLFormElement.elements] property.
///
/// This interface replaces one method from [HTMLCollection], on which it is
/// based.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection).
extension type HTMLFormControlsCollection._(JSObject _)
    implements HTMLCollection, JSObject {
  /// The **`HTMLFormControlsCollection.namedItem()`** method returns
  /// the [RadioNodeList] or the [Element] in the collection whose
  /// `name` or `id` match the specified name, or `null` if
  /// no node matches.
  ///
  /// Note that this version of `namedItem()` hides the one inherited from
  /// [HTMLCollection]. Like that one, in JavaScript, using the array bracket
  /// syntax with a `String`, like `collection["value"]` is
  /// equivalent to `collection.namedItem("value")`.
  external JSObject? namedItem(String name);
}

/// The **`RadioNodeList`** interface represents a collection of elements in a
/// `form` returned by a call to [HTMLFormControlsCollection.namedItem].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList).
extension type RadioNodeList._(JSObject _) implements NodeList, JSObject {
  /// If the underlying element collection contains radio buttons, the
  /// **`RadioNodeList.value`** property represents the checked radio
  /// button. On retrieving the `value` property, the `value` of the
  /// currently `checked` radio button is returned as a string. If the
  /// collection
  /// does not contain any radio buttons or none of the radio buttons in the
  /// collection is in
  /// `checked` state, the empty string is returned. On setting the
  /// `value` property, the first radio button input element whose
  /// `value` property is equal to the new value will be set to
  /// `checked`.
  external String get value;
  external set value(String value);
}

/// The **`DOMStringList`** interface is a legacy type returned by some APIs and
/// represents a non-modifiable list of strings (`DOMString`).
///
/// This interface was an
/// [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// and only continues to be supported to not break code that's already using
/// it. Modern APIs represent list structures using types based on JavaScript
/// [arrays](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array),
/// thus making many array methods available, and at the same time imposing
/// additional semantics on their usage (such as making their items read-only).
///
/// These historical reasons do not mean that you as a developer should avoid
/// `DOMStringList`. You don't create `DOMStringList` objects yourself, but you
/// get them from APIs such as `Location.ancestorOrigins`, and these APIs are
/// not deprecated. However, be careful of the semantic differences from a real
/// array.
///
/// This interface is used in
/// [IndexedDB](https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API)
/// and in the [Location] API:
///
/// - [IDBDatabase.objectStoreNames]
/// - [IDBObjectStore.indexNames]
/// - [Location.ancestorOrigins]
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList).
extension type DOMStringList._(JSObject _) implements JSObject {
  /// The **`item()`** method returns a string from a
  /// [`DOMStringList`](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList)
  /// by index.
  external String? item(int index);

  /// The **`contains()`** method returns a boolean indicating whether the given
  /// string is in the list.
  external bool contains(String string);

  /// The read-only **`length`** property indicates the number of strings in the
  /// [DOMStringList].
  external int get length;
}

/// The **`HTMLElement`** interface represents any
/// [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) element. Some
/// elements directly implement this interface, while others implement it via an
/// interface that inherits it.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement).
extension type HTMLElement._(JSObject _) implements Element, JSObject {
  /// Creates an [HTMLElement] using the tag 'article'.
  HTMLElement.article() : _ = document.createElement('article');

  /// Creates an [HTMLElement] using the tag 'section'.
  HTMLElement.section() : _ = document.createElement('section');

  /// Creates an [HTMLElement] using the tag 'nav'.
  HTMLElement.nav() : _ = document.createElement('nav');

  /// Creates an [HTMLElement] using the tag 'aside'.
  HTMLElement.aside() : _ = document.createElement('aside');

  /// Creates an [HTMLElement] using the tag 'hgroup'.
  HTMLElement.hgroup() : _ = document.createElement('hgroup');

  /// Creates an [HTMLElement] using the tag 'header'.
  HTMLElement.header() : _ = document.createElement('header');

  /// Creates an [HTMLElement] using the tag 'footer'.
  HTMLElement.footer() : _ = document.createElement('footer');

  /// Creates an [HTMLElement] using the tag 'address'.
  HTMLElement.address() : _ = document.createElement('address');

  /// Creates an [HTMLElement] using the tag 'dt'.
  HTMLElement.dt() : _ = document.createElement('dt');

  /// Creates an [HTMLElement] using the tag 'dd'.
  HTMLElement.dd() : _ = document.createElement('dd');

  /// Creates an [HTMLElement] using the tag 'figure'.
  HTMLElement.figure() : _ = document.createElement('figure');

  /// Creates an [HTMLElement] using the tag 'figcaption'.
  HTMLElement.figcaption() : _ = document.createElement('figcaption');

  /// Creates an [HTMLElement] using the tag 'main'.
  HTMLElement.main() : _ = document.createElement('main');

  /// Creates an [HTMLElement] using the tag 'search'.
  HTMLElement.search() : _ = document.createElement('search');

  /// Creates an [HTMLElement] using the tag 'em'.
  HTMLElement.em() : _ = document.createElement('em');

  /// Creates an [HTMLElement] using the tag 'strong'.
  HTMLElement.strong() : _ = document.createElement('strong');

  /// Creates an [HTMLElement] using the tag 'small'.
  HTMLElement.small() : _ = document.createElement('small');

  /// Creates an [HTMLElement] using the tag 's'.
  HTMLElement.s() : _ = document.createElement('s');

  /// Creates an [HTMLElement] using the tag 'cite'.
  HTMLElement.cite() : _ = document.createElement('cite');

  /// Creates an [HTMLElement] using the tag 'dfn'.
  HTMLElement.dfn() : _ = document.createElement('dfn');

  /// Creates an [HTMLElement] using the tag 'abbr'.
  HTMLElement.abbr() : _ = document.createElement('abbr');

  /// Creates an [HTMLElement] using the tag 'ruby'.
  HTMLElement.ruby() : _ = document.createElement('ruby');

  /// Creates an [HTMLElement] using the tag 'rt'.
  HTMLElement.rt() : _ = document.createElement('rt');

  /// Creates an [HTMLElement] using the tag 'rp'.
  HTMLElement.rp() : _ = document.createElement('rp');

  /// Creates an [HTMLElement] using the tag 'code'.
  HTMLElement.code() : _ = document.createElement('code');

  /// Creates an [HTMLElement] using the tag 'var'.
  HTMLElement.var_() : _ = document.createElement('var');

  /// Creates an [HTMLElement] using the tag 'samp'.
  HTMLElement.samp() : _ = document.createElement('samp');

  /// Creates an [HTMLElement] using the tag 'kbd'.
  HTMLElement.kbd() : _ = document.createElement('kbd');

  /// Creates an [HTMLElement] using the tag 'sub'.
  HTMLElement.sub() : _ = document.createElement('sub');

  /// Creates an [HTMLElement] using the tag 'sup'.
  HTMLElement.sup() : _ = document.createElement('sup');

  /// Creates an [HTMLElement] using the tag 'i'.
  HTMLElement.i() : _ = document.createElement('i');

  /// Creates an [HTMLElement] using the tag 'b'.
  HTMLElement.b() : _ = document.createElement('b');

  /// Creates an [HTMLElement] using the tag 'u'.
  HTMLElement.u() : _ = document.createElement('u');

  /// Creates an [HTMLElement] using the tag 'mark'.
  HTMLElement.mark() : _ = document.createElement('mark');

  /// Creates an [HTMLElement] using the tag 'bdi'.
  HTMLElement.bdi() : _ = document.createElement('bdi');

  /// Creates an [HTMLElement] using the tag 'bdo'.
  HTMLElement.bdo() : _ = document.createElement('bdo');

  /// Creates an [HTMLElement] using the tag 'wbr'.
  HTMLElement.wbr() : _ = document.createElement('wbr');

  /// Creates an [HTMLElement] using the tag 'summary'.
  HTMLElement.summary() : _ = document.createElement('summary');

  /// Creates an [HTMLElement] using the tag 'noscript'.
  HTMLElement.noscript() : _ = document.createElement('noscript');

  /// Creates an [HTMLElement] using the tag 'acronym'.
  HTMLElement.acronym() : _ = document.createElement('acronym');

  /// Creates an [HTMLElement] using the tag 'noframes'.
  HTMLElement.noframes() : _ = document.createElement('noframes');

  /// Creates an [HTMLElement] using the tag 'menuitem'.
  HTMLElement.menuitem() : _ = document.createElement('menuitem');

  /// Creates an [HTMLElement] using the tag 'noembed'.
  HTMLElement.noembed() : _ = document.createElement('noembed');

  /// Creates an [HTMLElement] using the tag 'plaintext'.
  HTMLElement.plaintext() : _ = document.createElement('plaintext');

  /// Creates an [HTMLElement] using the tag 'rb'.
  HTMLElement.rb() : _ = document.createElement('rb');

  /// Creates an [HTMLElement] using the tag 'rtc'.
  HTMLElement.rtc() : _ = document.createElement('rtc');

  /// Creates an [HTMLElement] using the tag 'strike'.
  HTMLElement.strike() : _ = document.createElement('strike');

  /// Creates an [HTMLElement] using the tag 'basefont'.
  HTMLElement.basefont() : _ = document.createElement('basefont');

  /// Creates an [HTMLElement] using the tag 'big'.
  HTMLElement.big() : _ = document.createElement('big');

  /// Creates an [HTMLElement] using the tag 'center'.
  HTMLElement.center() : _ = document.createElement('center');

  /// Creates an [HTMLElement] using the tag 'nobr'.
  HTMLElement.nobr() : _ = document.createElement('nobr');

  /// Creates an [HTMLElement] using the tag 'tt'.
  HTMLElement.tt() : _ = document.createElement('tt');

  /// The **`HTMLElement.click()`** method simulates a mouse click on an
  /// element. When called on an element, the element's [Element.click_event]
  /// event is fired (unless its
  /// [`disabled`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/disabled)
  /// attribute is set).
  external void click();

  /// The **`HTMLElement.attachInternals()`** method returns an
  /// [ElementInternals] object.
  /// This method allows a
  /// [custom element](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements)
  /// to participate in HTML forms. The `ElementInternals` interface provides
  /// utilities for working with these elements in the same way you would work
  /// with any standard HTML form element, and also exposes the
  /// [Accessibility Object Model](https://wicg.github.io/aom/explainer.html) to
  /// the element.
  external ElementInternals attachInternals();

  /// The **`showPopover()`** method of the [HTMLElement] interface shows a
  /// [Popover_API] element (i.e. one that has a valid
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute) by adding it to the .
  ///
  /// When `showPopover()` is called on an element with the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute that is currently hidden, a [HTMLElement.beforetoggle_event]
  /// event will be fired, followed by the popover showing, and then the
  /// [HTMLElement.toggle_event] event firing. If the element is already
  /// showing, an error will be thrown.
  external void showPopover([ShowPopoverOptions options]);

  /// The **`hidePopover()`** method of the [HTMLElement] interface hides a
  /// [popover](https://developer.mozilla.org/en-US/docs/Web/API/Popover_API)
  /// element (i.e. one that has a valid
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute) by removing it from the  and styling it with `display: none`.
  ///
  /// When `hidePopover()` is called on a showing element with the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute, a [HTMLElement.beforetoggle_event] event will be fired,
  /// followed by the popover being hidden, and then the
  /// [HTMLElement.toggle_event] event firing. If the element is already hidden,
  /// an error is thrown.
  external void hidePopover();

  /// The **`togglePopover()`** method of the [HTMLElement] interface toggles a
  /// [Popover_API] element (i.e. one that has a valid
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute) between the hidden and showing states.
  ///
  /// When `togglePopover()` is called on an element with the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute:
  ///
  /// 1. A [HTMLElement.beforetoggle_event] event is fired.
  /// 2. The popover toggles between hidden and showing:
  /// 1. If it was initially showing, it toggles to hidden.
  /// 2. If it was initially hidden, it toggles to showing.
  /// 3. A [HTMLElement.toggle_event] event is fired.
  external bool togglePopover([JSAny options]);

  /// The **`HTMLElement.focus()`** method sets focus on the specified element,
  /// if it can be focused.
  /// The focused element is the element that will receive keyboard and similar
  /// events by default.
  ///
  /// By default the browser will scroll the element into view after focusing
  /// it, and it may also provide visible indication of the focused element
  /// (typically by displaying a "focus ring" around the element).
  /// Parameter options are provided to disable the default scrolling and force
  /// visible indication on elements.
  external void focus([FocusOptions options]);

  /// The **`HTMLElement.blur()`** method removes keyboard focus from the
  /// current element.
  external void blur();

  /// The **`HTMLElement.title`** property
  /// represents the title of the element: the text usually displayed in a
  /// 'tooltip' popup
  /// when the mouse is over the node.
  external String get title;
  external set title(String value);

  /// The **`lang`** property of the [HTMLElement] interface indicates the base
  /// language of an element's attribute values and text content, in the form of
  /// a `5646, "BCP 47 language identifier tag"`. It reflects the element's
  /// [`lang`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang)
  /// attribute; the `xml:lang` attribute does not affect this property.
  ///
  /// Note that if the `lang` attribute is unspecified, the element itself may
  /// still inherit the language from its parent. However, that inherited
  /// language is not reflected by this property's value.
  external String get lang;
  external set lang(String value);

  /// The **`translate`** property of the [HTMLElement] interface indicates
  /// whether an element's attribute values and the values of its [Text] node
  /// children are to be translated when the page is localized, or whether to
  /// leave them unchanged.
  ///
  /// It reflects the value of the
  /// [`translate`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/translate)
  /// HTML global attribute.
  external bool get translate;
  external set translate(bool value);

  /// The **`HTMLElement.dir`** property indicates the text writing
  /// directionality of the content of the current element. It reflects the
  /// element's
  /// [`dir`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir)
  /// attribute.
  ///
  /// Note that if the `dir` attribute is unspecified, the element itself may
  /// still inherit directionality from its parent. However, that inherited
  /// directionality is not reflected by this property's value.
  ///
  /// The text writing directionality of an element is which direction that text
  /// goes (for support of different language systems). Arabic languages and
  /// Hebrew are typical languages using the RTL directionality.
  external String get dir;
  external set dir(String value);

  /// The [HTMLElement] property **`hidden`** reflects the value of the
  /// element's
  /// [`hidden`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/hidden)
  /// attribute.
  external JSAny? get hidden;
  external set hidden(JSAny? value);

  /// The [HTMLElement] property **`inert`** reflects the value of the element's
  /// [`inert`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inert)
  /// attribute. It is a boolean value that, when present, makes the browser
  /// "ignore" user input events for the element, including focus events and
  /// events from assistive technologies. The browser may also ignore page
  /// search and text selection in the element. This can be useful when building
  /// UIs such as modals where you would want to "trap" the focus inside the
  /// modal when it's visible.
  ///
  /// Note that if the `inert` attribute is unspecified, the element itself may
  /// still inherit inertness from its parent. However, that inherited inertness
  /// is not reflected by this property's value.
  external bool get inert;
  external set inert(bool value);

  /// The **`HTMLElement.accessKey`** property sets the keystroke which a user
  /// can press to jump to a given element.
  ///
  /// > [!NOTE]
  /// > The `HTMLElement.accessKey` property is seldom used because of its
  /// > multiple conflicts with already present key bindings in browsers. To
  /// > work around this, browsers implement accesskey behavior if the keys are
  /// > pressed with other "qualifying" keys (such as <kbd>Alt</kbd> +
  /// > accesskey).
  external String get accessKey;
  external set accessKey(String value);

  /// The **`HTMLElement.accessKeyLabel`**
  /// read-only property returns a string containing the element's
  /// browser-assigned access key (if any); otherwise it returns an empty
  /// string.
  external String get accessKeyLabel;

  /// The **`draggable`** property of the [HTMLElement] interface gets and sets
  /// a `Boolean` primitive indicating if the element is draggable.
  ///
  /// It reflects the value of the
  /// [`draggable`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/draggable)
  /// HTML global attribute.
  external bool get draggable;
  external set draggable(bool value);

  /// The **`spellcheck`** property of the [HTMLElement] interface represents a
  /// boolean value that controls the
  /// [spell-checking](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/spellcheck)
  /// hint. It is available on all HTML elements, though it doesn't affect all
  /// of them.
  ///
  /// It reflects the value of the
  /// [`spellcheck`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/spellcheck)
  /// HTML global attribute.
  external bool get spellcheck;
  external set spellcheck(bool value);

  /// The **`writingSuggestions`** property of the [HTMLElement] interface is a
  /// string indicating if browser-provided writing suggestions should be
  /// enabled under the scope of the element or not.
  ///
  /// It reflects the value of the
  /// [`writingsuggestions`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/writingsuggestions)
  /// HTML global attribute.
  external String get writingSuggestions;
  external set writingSuggestions(String value);

  /// The **`autocapitalize`** property of the [HTMLElement] interface
  /// represents the element's capitalization behavior for user input. It is
  /// available on all HTML elements, though it doesn't affect all of them,
  /// including:
  ///
  /// - `input` and `textarea` elements.
  /// - Any element with
  ///   [`contenteditable`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable)
  ///   set on it.
  ///
  /// `autocapitalize` doesn't affect behavior when typing on a physical
  /// keyboard. It affects the behavior of other input mechanisms such as
  /// virtual keyboards on mobile devices and voice input. This can assist users
  /// by making data entry quicker and easier, for example by automatically
  /// capitalizing the first letter of each sentence.
  ///
  /// It reflects the value of the
  /// [`autocapitalize`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autocapitalize)
  /// HTML global attribute.
  external String get autocapitalize;
  external set autocapitalize(String value);

  /// The **`autocorrect`** property of the [HTMLElement] interface controls
  /// whether or not autocorrection of editable text is enabled for spelling
  /// and/or punctuation errors.
  ///
  /// The specific autocorrection behavior, including which words are
  /// substituted, depends on the user agent and the services provided by the
  /// underlying device.
  /// For example, on macOS a user agent might rely on
  /// [registered replacement text and punctuation](https://support.apple.com/en-vn/guide/mac-help/mh35735/mac).
  /// Other devices and browsers may use a different approach.
  ///
  /// The property reflects the value of the
  /// [`autocorrect`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/autocorrect)
  /// HTML global attribute.
  external bool get autocorrect;
  external set autocorrect(bool value);

  /// The **`innerText`** property of the [HTMLElement] interface represents the
  /// rendered text content of a node and its descendants.
  ///
  /// As a getter, it approximates the text the user would get if they
  /// highlighted the contents of the element with the cursor and then copied it
  /// to the clipboard.
  /// As a setter this will replace the element's children with the given value,
  /// converting any line breaks into `br` elements.
  ///
  /// > **Note:** `innerText` is easily confused with [Node.textContent], but
  /// > there are important differences between the two.
  /// > Basically, `innerText` is aware of the rendered appearance of text,
  /// > while `textContent` is not.
  external String get innerText;
  external set innerText(String value);

  /// The **`outerText`** property of the [HTMLElement] interface returns the
  /// same value as [HTMLElement.innerText].
  /// When used as a setter it replaces the whole current node with the given
  /// text (this differs from `innerText`, which replaces the content _inside_
  /// the current node).
  ///
  /// See [HTMLElement.innerText] for more information and examples showing how
  /// both properties are used as getters.
  external String get outerText;
  external set outerText(String value);

  /// The **`popover`** property of the [HTMLElement] interface gets and sets an
  /// element's popover state via JavaScript (`"auto"`, `"hint"`, or
  /// `"manual"`), and can be used for feature detection.
  ///
  /// It reflects the value of the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// global HTML attribute.
  external String? get popover;
  external set popover(String? value);

  /// The **`HTMLElement.offsetParent`** read-only property returns a
  /// reference to the element which is the closest (nearest in the containment
  /// hierarchy)
  /// positioned ancestor element.
  ///
  /// A positioned ancestor might be:
  ///
  /// - a
  ///   [containing block](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_display/Containing_block#identifying_the_containing_block)
  ///   for absolutely-positioned elements
  /// - an element with a different effective
  ///   [zoom](https://developer.mozilla.org/en-US/docs/Web/CSS/zoom) value
  ///   (that is, the product of all zoom scales of its parents) from this
  ///   element
  /// - `td`, `th`, `table` in case the element itself is static positioned.
  ///
  /// If there is no positioned ancestor element, the `body` is returned.
  ///
  /// > **Note:** `offsetParent` returns `null` in the following
  /// > situations:
  /// >
  /// > - The element or any ancestor has the `display` property set to
  /// > `none`.
  /// > - The element has the `position` property set to `fixed`
  /// > (Firefox returns `<body>`).
  /// > - The element is `<body>` or `<html>`.
  ///
  /// `offsetParent` is useful because
  /// [HTMLElement.offsetTop] and
  /// [HTMLElement.offsetLeft] are relative to its padding edge.
  external Element? get offsetParent;

  /// The **`HTMLElement.offsetTop`** read-only property returns the
  /// distance from the outer border of the current element (including its
  /// margin) to the top padding edge of the [HTMLelement.offsetParent], the
  /// _closest positioned_
  /// ancestor element.
  external int get offsetTop;

  /// The **`HTMLElement.offsetLeft`** read-only property returns the number of
  /// pixels that the _upper left corner_ of the current element is offset to
  /// the left within the [HTMLElement.offsetParent] node.
  ///
  /// For block-level elements, `offsetTop`, `offsetLeft`, `offsetWidth`, and
  /// `offsetHeight` describe the border box of an element relative to the
  /// `offsetParent`.
  ///
  /// However, for inline-level elements (such as **span**) that can wrap from
  /// one line to the next, `offsetTop` and `offsetLeft` describe the positions
  /// of the _first_ border box (use [Element.getClientRects] to get its width
  /// and height), while `offsetWidth` and `offsetHeight` describe the
  /// dimensions of the _bounding_ border box (use
  /// [Element.getBoundingClientRect] to get its position). Therefore, a box
  /// with the left, top, width and height of `offsetLeft`, `offsetTop`,
  /// `offsetWidth` and `offsetHeight` will not be a bounding box for a span
  /// with wrapped text.
  external int get offsetLeft;

  /// The **`HTMLElement.offsetWidth`** read-only property returns
  /// the layout width of an element as an integer.
  ///
  /// Typically, `offsetWidth` is a measurement in pixels of the element's CSS
  /// width, including any borders, padding, and vertical scrollbars (if
  /// rendered). It does
  /// not include the width of pseudo-elements such as `::before` or
  /// `::after`.
  ///
  /// If the element is hidden (for example, by setting `style.display` on the
  /// element or one of its ancestors to `"none"`), then `0` is
  /// returned.
  external int get offsetWidth;

  /// The **`HTMLElement.offsetHeight`** read-only property returns
  /// the height of an element, including vertical padding and borders, as an
  /// integer.
  ///
  /// Typically, `offsetHeight` is a measurement in pixels of the element's CSS
  /// height, including any borders, padding, and horizontal scrollbars (if
  /// rendered). It does
  /// not include the height of pseudo-elements such as `::before` or
  /// `::after`. For the document body object, the measurement includes total
  /// linear content height instead of the element's CSS height. Floated
  /// elements extending
  /// below other linear content are ignored.
  ///
  /// If the element is hidden (for example, by setting `style.display` on the
  /// element or one of its ancestors to `"none"`), then `0` is
  /// returned.
  ///
  /// > [!NOTE]
  /// > This property will round the value to an integer. If you need a
  /// > fractional value, use
  /// > [element.getBoundingClientRect].
  external int get offsetHeight;

  /// The read-only **`style`** property of the [HTMLElement] returns the
  /// _inline_ style of an element in the form of a live [CSSStyleDeclaration]
  /// object that contains a list of all styles properties for that element with
  /// values assigned only for the attributes that are defined in the element's
  /// inline
  /// [`style`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/style)
  /// attribute.
  ///
  /// Shorthand properties are expanded. If you set `style="border-top: 1px
  /// solid black"`, the longhand properties (, , and ) are set instead.
  ///
  /// This property is read-only, meaning it is not possible to assign a
  /// [CSSStyleDeclaration] object to it. Nevertheless, it is possible to set an
  /// inline style by assigning a _string_ directly to the `style` property. In
  /// this case the string is forwarded to [CSSStyleDeclaration.cssText]. Using
  /// `style` in this manner will completely overwrite all inline styles on the
  /// element.
  ///
  /// Therefore, to add specific styles to an element without altering other
  /// style values, it is generally preferable to set individual properties on
  /// the [CSSStyleDeclaration] object. For example, you can write
  /// `element.style.backgroundColor = "red"`.
  ///
  /// A style declaration is reset by setting it to `null` or an empty string,
  /// e.g., `elt.style.color = null`.
  ///
  /// > [!NOTE]
  /// > CSS property names are converted to JavaScript identifier with these
  /// > rules:
  /// >
  /// > - If the property is made of one word, it remains as it is: `height`
  /// > stays as is (in lowercase). As `float` is a reserved keyword in
  /// > JavaScript, this property name was historically converted to `cssFloat`.
  /// > All modern browsers now support the direct use of `float` in JavaScript
  /// > to access the `float` CSS property, but `cssFloat` is used in older
  /// > browsers and is still supported as an alias in modern browsers.
  /// > - If the property is made of several words, separated by dashes, the
  /// > dashes are removed and it is converted to : `background-attachment`
  /// > becomes `backgroundAttachment`.
  /// >
  /// > The `style` property has the same priority in the CSS cascade as an
  /// > inline style declaration set via the `style` attribute.
  external CSSStyleDeclaration get style;

  /// The **`attributeStyleMap`** read-only property of the [HTMLElement]
  /// interface returns a live [StylePropertyMap] object that contains a list of
  /// style properties of the element that are defined in the element's inline
  /// `style` attribute, or assigned using the [HTMLElement.style] property of
  /// the [HTMLElement] interface via script.
  ///
  /// Shorthand properties are expanded. If you set `border-top: 1px solid
  /// black`, the longhand properties (, , and ) are set instead.
  ///
  /// The main difference between [HTMLElement.style] property and
  /// `attributeStyleMap` property is that, the `style` property will return a
  /// [CSSStyleDeclaration] object, while the `attributeStyleMap` property will
  /// return a [StylePropertyMap] object.
  ///
  /// Though the property itself is not writable, you could read and write
  /// inline styles through the [StylePropertyMap] object that it returns, just
  /// like through the [CSSStyleDeclaration] object that returns via the `style`
  /// property.
  external StylePropertyMap get attributeStyleMap;
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onauxclick;
  external set onauxclick(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforetoggle;
  external set onbeforetoggle(EventHandler value);
  external EventHandler get onblur;
  external set onblur(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncopy;
  external set oncopy(EventHandler value);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external EventHandler get oncut;
  external set oncut(EventHandler value);
  external EventHandler get ondblclick;
  external set ondblclick(EventHandler value);
  external EventHandler get ondrag;
  external set ondrag(EventHandler value);
  external EventHandler get ondragend;
  external set ondragend(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragover;
  external set ondragover(EventHandler value);
  external EventHandler get ondragstart;
  external set ondragstart(EventHandler value);
  external EventHandler get ondrop;
  external set ondrop(EventHandler value);
  external EventHandler get ondurationchange;
  external set ondurationchange(EventHandler value);
  external EventHandler get onemptied;
  external set onemptied(EventHandler value);
  external EventHandler get onended;
  external set onended(EventHandler value);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onfocus;
  external set onfocus(EventHandler value);
  external EventHandler get onformdata;
  external set onformdata(EventHandler value);
  external EventHandler get oninput;
  external set oninput(EventHandler value);
  external EventHandler get oninvalid;
  external set oninvalid(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeyup;
  external set onkeyup(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onmousedown;
  external set onmousedown(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmousemove;
  external set onmousemove(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseup;
  external set onmouseup(EventHandler value);
  external EventHandler get onpaste;
  external set onpaste(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onplay;
  external set onplay(EventHandler value);
  external EventHandler get onplaying;
  external set onplaying(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onratechange;
  external set onratechange(EventHandler value);
  external EventHandler get onreset;
  external set onreset(EventHandler value);
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onseeked;
  external set onseeked(EventHandler value);
  external EventHandler get onseeking;
  external set onseeking(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
  external EventHandler get onstalled;
  external set onstalled(EventHandler value);
  external EventHandler get onsubmit;
  external set onsubmit(EventHandler value);
  external EventHandler get onsuspend;
  external set onsuspend(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontoggle;
  external set ontoggle(EventHandler value);
  external EventHandler get onvolumechange;
  external set onvolumechange(EventHandler value);
  external EventHandler get onwaiting;
  external set onwaiting(EventHandler value);
  external EventHandler get onwheel;
  external set onwheel(EventHandler value);
  external EventHandler get onanimationstart;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationcancel;
  external set onanimationcancel(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerleave;
  external set onpointerleave(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectionchange;
  external set onselectionchange(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchcancel;
  external set ontouchcancel(EventHandler value);

  /// The **`contentEditable`** property of
  /// the [HTMLElement] interface specifies whether or not the element is
  /// editable.
  ///
  /// This enumerated attribute can have the following values:
  ///
  /// - `"true"` indicates that the element is `contenteditable`.
  /// - `"false"` indicates that the element cannot be edited.
  /// - `"plaintext-only"` indicates that the element's raw text is editable,
  ///   but rich text formatting is disabled.
  ///
  /// You can use the [HTMLElement.isContentEditable] property to test the
  /// computed boolean value of this property.
  ///
  /// If the attribute is missing or its value is invalid, its value is
  /// inherited from its parent element: so the element
  /// is editable (or not) based on the parent element.
  external String get contentEditable;
  external set contentEditable(String value);

  /// The **`enterKeyHint`** property is an enumerated property defining
  /// what action label (or icon) to present for the enter key on virtual
  /// keyboards.
  /// It reflects the
  /// [`enterkeyhint`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/enterkeyhint)
  /// HTML global attribute and is an enumerated property, only accepting the
  /// following values
  /// as a string:
  ///
  /// - `'enter'` typically indicating inserting a new line.
  /// - `'done'` typically meaning there is nothing more to input and the input
  ///   method editor (IME) will be closed.
  /// - `'go'` typically meaning to take the user to the target of the text they
  ///   typed.
  /// - `'next'` typically taking the user to the next field that will accept
  ///   text.
  /// - `'previous'` typically taking the user to the previous field that will
  ///   accept text.
  /// - `'search'` typically taking the user to the results of searching for the
  ///   text they have typed.
  /// - `'send'` typically delivering the text to its target.
  ///
  /// If no `enterKeyHint` value has been specified or if it was set to a
  /// different value than the allowed ones, it will return an empty string.
  external String get enterKeyHint;
  external set enterKeyHint(String value);

  /// The **`HTMLElement.isContentEditable`** read-only property
  /// returns a boolean value that is `true` if the contents of the element
  /// are editable; otherwise it returns `false`.
  external bool get isContentEditable;

  /// The [HTMLElement] property **`inputMode`** reflects the value of the
  /// element's
  /// [`inputmode`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inputmode)
  /// attribute.
  ///
  /// It provides a hint about the type of data that might be entered by the
  /// user while editing the element or its contents. This allows the browser to
  /// display an appropriate virtual keyboard.
  ///
  /// It is used primarily on `input` elements, but is usable on any element in
  /// [`contenteditable`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable)
  /// mode.
  external String get inputMode;
  external set inputMode(String value);

  /// The **`dataset`** read-only property
  /// of the [HTMLElement] interface provides read/write access to
  /// [custom data attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*)
  /// (`data-*`) on elements. It exposes a map of strings
  /// ([DOMStringMap]) with an entry for each `data-*` attribute.
  ///
  /// > [!NOTE]
  /// > The `dataset` property itself can be read, but not directly written.
  /// > Instead, all writes must be to the individual properties within the
  /// > `dataset`, which in turn represent the data attributes.
  ///
  /// An HTML `data-*` attribute and its corresponding DOM
  /// `dataset.property` modify their shared name according to where
  /// they are read or written:
  ///
  /// - In HTML
  ///   - : The attribute name begins with `data-`. It can contain only letters,
  /// numbers, dashes (`-`), periods (`.`), colons (`:`),
  /// and underscores (`_`). Any  capital letters (`A` to
  /// `Z`) are converted to lowercase.
  /// - In JavaScript
  ///   - : The property name of a custom data attribute is the same as the HTML attribute
  /// without the `data-` prefix. Single dashes (`-`) are removed, and the next
  /// ASCII
  /// character after a removed dash is capitalized to form the property's
  /// camel-cased name.
  ///
  /// Details and examples of converting between the HTML and JavaScript forms
  /// is described in more detail in the next section.
  ///
  /// In addition to the information below, you'll find a how-to guide for using
  /// HTML data
  /// attributes in our article
  /// [_Using data attributes_](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Solve_HTML_problems/Use_data_attributes).
  ///
  /// ### Name conversion
  ///
  /// - `dash-style` to `camelCase` conversion
  ///
  ///   - : A custom data attribute name is transformed to a key for the
  /// [DOMStringMap] entry by the following:
  ///
  /// 1. Lowercase all ASCII capital letters (`A` to
  /// `Z`);
  /// 2. Remove the prefix `data-` (including the dash);
  /// 3. For any dash (`U+002D`) followed by an ASCII lowercase letter
  /// `a` to `z`, remove the dash and uppercase the letter;
  /// 4. Other characters (including other dashes) are left unchanged.
  ///
  /// - `camelCase` to `dash-style` conversion
  ///
  ///   - : The opposite transformation, which maps a key to an attribute name, uses the
  /// following:
  ///
  /// 1. **Restriction:** Before transformation, a dash _must not_ be
  /// immediately followed by an ASCII lowercase letter `a` to
  /// `z`;
  /// 2. Add the `data-` prefix;
  /// 3. Add a dash before any ASCII uppercase letter `A` to `Z`,
  /// then lowercase the letter;
  /// 4. Other characters are left unchanged.
  ///
  /// For example, a `data-abc-def` attribute corresponds to
  /// `dataset.abcDef`.
  ///
  /// ### Accessing values
  ///
  /// - Attributes can be set and read by the camelCase name/key as an object
  ///   property of
  /// the dataset: `element.dataset.keyname`.
  /// - Attributes can also be set and read using bracket syntax:
  /// `element.dataset['keyname']`.
  /// - The
  ///   [`in` operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/in)
  ///   can check if a given attribute exists:
  /// `'keyname' in element.dataset`. Note that this will walk the
  /// [prototype chain](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)
  /// of `dataset` and may be unsafe if you have external code that may pollute
  /// the prototype chain. Several alternatives exist, such as `'keyname')"`, or
  /// just checking if `element.dataset.keyname !== undefined`.
  ///
  /// ### Setting values
  ///
  /// - When the attribute is set, its value is always converted to a string.
  /// For example: `element.dataset.example = null` is
  /// converted into `data-example="null"`.
  ///
  /// - To remove an attribute, you can use the
  ///   [`delete` operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/delete):
  ///   `delete element.dataset.keyname`.
  external DOMStringMap get dataset;

  /// The **`nonce`** property of the [HTMLElement] interface returns the
  /// cryptographic number used once that is used by
  /// [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)
  /// to determine whether a given fetch will be allowed to proceed.
  ///
  /// In later implementations, elements only expose their `nonce` attribute to
  /// scripts (and not to side-channels like CSS attribute selectors).
  external String get nonce;
  external set nonce(String value);

  /// The **`autofocus`** property of the [HTMLElement] interface represents a
  /// boolean value reflecting the
  /// [`autofocus`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select#autofocus)
  /// HTML global attribute, which indicates whether the control should be
  /// focused when the page loads, or when dialog or popover become shown if
  /// specified in an element inside `dialog` elements or elements whose popover
  /// attribute is set.
  ///
  /// Only one form-associated element inside a document, or a `dialog` element,
  /// or an element whose `popover` attribute is set, can have this attribute
  /// specified. If there are several, the first element with the attribute set
  /// inserted, usually the first such element on the page, gets the initial
  /// focus.
  ///
  /// > [!NOTE]
  /// > Setting this property doesn't set the focus to the associated element:
  /// > it merely tells the browser to focus to it when _the element is
  /// > inserted_ in the document. Setting it after the insertion, that is most
  /// > of the time after the document load, has no visible effect.
  external bool get autofocus;
  external set autofocus(bool value);

  /// The **`tabIndex`** property of the
  /// [HTMLElement] interface represents the tab order of the current element.
  ///
  /// Tab order is as follows:
  ///
  /// 1. Elements with a positive `tabIndex`. Elements that have identical
  /// `tabIndex` values should be navigated in the order they appear. Navigation
  /// proceeds from the lowest `tabIndex` to the highest `tabIndex`.
  /// 2. Elements that do not support the `tabIndex` attribute or support it and
  /// assign `tabIndex` to `0`, in the order they appear.
  ///
  /// Elements that are disabled do not participate in the tabbing order.
  ///
  /// Values don't need to be sequential, nor must they begin with any
  /// particular value. They
  /// may even be negative, though each browser trims very large values.
  external int get tabIndex;
  external set tabIndex(int value);
}
extension type ShowPopoverOptions._(JSObject _) implements JSObject {
  external factory ShowPopoverOptions({HTMLElement source});

  external HTMLElement get source;
  external set source(HTMLElement value);
}
extension type TogglePopoverOptions._(JSObject _)
    implements ShowPopoverOptions, JSObject {
  external factory TogglePopoverOptions({
    HTMLElement source,
    bool force,
  });

  external bool get force;
  external set force(bool value);
}

/// The **`DOMStringMap`** interface is used for the [HTMLElement.dataset]
/// attribute, to represent data for custom attributes added to elements.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap).
extension type DOMStringMap._(JSObject _) implements JSObject {
  external String operator [](String name);
  external void operator []=(
    String name,
    String value,
  );
}

/// The **`HTMLHeadElement`** interface contains the descriptive information, or
/// metadata, for a document. This object inherits all of the properties and
/// methods described in the [HTMLElement] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement).
extension type HTMLHeadElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLHeadElement] using the tag 'head'.
  HTMLHeadElement() : _ = document.createElement('head');
}

/// The **`HTMLImageElement`** interface represents an HTML `img` element,
/// providing the properties and methods used to manipulate image elements.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement).
extension type HTMLImageElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLImageElement] using the tag 'img'.
  HTMLImageElement() : _ = document.createElement('img');

  /// The **`decode()`**
  /// method of the [HTMLImageElement] interface returns a
  /// `Promise` that resolves once the image is decoded and it is safe to append
  /// it to the DOM.
  ///
  /// This can be used to initiate loading of the image prior
  /// to attaching it to an element in the DOM (or adding it to the DOM as a new
  /// element), so
  /// that the image can be rendered immediately upon being added to the DOM.
  /// This, in turn,
  /// prevents the rendering of the next frame after adding the image to the DOM
  /// from causing
  /// a delay while the image loads.
  external JSPromise<JSAny?> decode();

  /// The [HTMLImageElement] property **`alt`** provides fallback (alternate)
  /// text to display when the image specified by the `img` element is not
  /// loaded.
  ///
  /// This may be the case because of an error, because the user has disabled
  /// the loading of images, or because the image hasn't finished loading yet.
  ///
  /// Perhaps the most important reason to use the `alt` property is to support
  /// [accessibility](https://developer.mozilla.org/en-US/docs/Web/Accessibility),
  /// as the `alt` text may be used by screen readers and other assistive
  /// technologies to help people with a disability make full use of your
  /// content.
  /// It will be read aloud or sent to a braille output device, for example, to
  /// support blind or visually impaired users.
  ///
  /// > **Think of it like this:** When choosing `alt` strings for your images,
  /// > imagine what you would say when reading the page to someone over the
  /// > phone without mentioning that there's an image on the page.
  ///
  /// The alternate text is displayed in the space the image would occupy and
  /// should be able to take the place of the image _without altering the
  /// meaning of the page_.
  external String get alt;
  external set alt(String value);

  /// The [HTMLImageElement] property
  /// **`src`**, which reflects the HTML
  /// [`src`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#src)
  /// attribute, specifies the image to display in the `img`
  /// element.
  external String get src;
  external set src(String value);

  /// The [HTMLImageElement] property
  /// **`srcset`** is a string which identifies one or more
  /// **image candidate strings**, separated using commas (`,`) each
  /// specifying image resources to use under given circumstances.
  ///
  /// Each image
  /// candidate string contains an image URL and an optional width or pixel
  /// density descriptor
  /// that indicates the conditions under which that candidate should be used
  /// instead of the
  /// image specified by the [HTMLImageElement.src] property.
  ///
  /// The `srcset` property, along with the [HTMLImageElement.sizes]
  /// property, are a crucial component in designing responsive websites, as
  /// they
  /// can be used together to make pages that use appropriate images for the
  /// rendering
  /// situation.
  ///
  /// > [!NOTE]
  /// > If the
  /// > [`srcset`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#srcset)
  /// > attribute uses width descriptors, the `sizes` attribute must also be
  /// > present, or the `srcset` itself will be ignored.
  external String get srcset;
  external set srcset(String value);

  /// The [HTMLImageElement] property
  /// **`sizes`** allows you to specify the layout width of the
  /// [image](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img) for
  /// each of a list of media conditions. This provides the ability to
  /// automatically select among different images—even images of different
  /// orientations or
  /// aspect ratios—as the document state changes to match different media
  /// conditions.
  ///
  /// Each condition is specified using the same conditional format used
  /// by
  /// [media queries](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries).
  external String get sizes;
  external set sizes(String value);

  /// The [HTMLImageElement]
  /// interface's **`crossOrigin`** attribute is a string which
  /// specifies the Cross-Origin Resource Sharing () setting to use when
  /// retrieving the image.
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The **`useMap`** property on the
  /// [HTMLImageElement] interface reflects the value of the
  /// [`usemap`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#usemap)
  /// attribute, which is a string
  /// providing the name of the client-side image map to apply to the image.
  external String get useMap;
  external set useMap(String value);

  /// The [HTMLImageElement] property **`isMap`** is a
  /// Boolean value which indicates that the image is to be used by a
  /// server-side image map.
  /// This may only be used on images located within an `a` element.
  ///
  /// > [!NOTE]
  /// > For accessibility reasons, you should generally avoid using
  /// > server-side image maps, as they require the use of a mouse. Use a
  /// > [client-side image map](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Solve_HTML_problems/Add_a_hit_map_on_top_of_an_image)
  /// > instead.
  external bool get isMap;
  external set isMap(bool value);

  /// The **`width`** property of the
  /// [HTMLImageElement] interface indicates the width at which an image is
  /// drawn in  if it's being drawn or rendered to
  /// any visual medium such as a screen or printer. Otherwise, it's the
  /// natural, pixel
  /// density-corrected width of the image.
  external int get width;
  external set width(int value);

  /// The **`height`** property of the
  /// [HTMLImageElement] interface indicates the height at which the image is
  /// drawn, in  if the image is being drawn or rendered to any
  /// visual medium such as the screen or a printer; otherwise, it's the
  /// natural, pixel
  /// density corrected height of the image.
  external int get height;
  external set height(int value);

  /// The [HTMLImageElement] interface's read-only
  /// **`naturalWidth`** property returns the intrinsic (natural),
  /// density-corrected width of the image in .
  ///
  /// This is the width the image is if drawn with nothing constraining
  /// its width; if you neither specify a width for the image nor place the
  /// image inside a
  /// container that limits or expressly specifies the image width, this is the
  /// number of CSS
  /// pixels wide the image will be.
  ///
  /// The corresponding [HTMLImageElement.naturalHeight] method
  /// returns the natural height of the image.
  ///
  /// > [!NOTE]
  /// > Most of the time the natural width is the actual width of the image sent
  /// > by the server.
  /// > Nevertheless, browsers can modify an image before pushing it to the
  /// > renderer. For example, Chrome
  /// > [degrades the resolution of images on low-end devices](https://crbug.com/1187043#c7).
  /// > In such cases, `naturalWidth` will consider the width of the image
  /// > modified
  /// > by such browser interventions as the natural width, and returns this
  /// > value.
  external int get naturalWidth;

  /// The [HTMLImageElement] interface's
  /// **`naturalHeight`** property is a read-only value which
  /// returns the intrinsic (natural), density-corrected height of the image in
  /// .
  ///
  /// This is the height the image is if
  /// drawn with nothing constraining its height; if you don't specify a height
  /// for the image,
  /// or place the image inside a container that either limits or expressly
  /// specifies the
  /// image height, it will be rendered this tall.
  ///
  /// > [!NOTE]
  /// > Most of the time the natural height is the actual height of the image
  /// > sent by the server.
  /// > Nevertheless, browsers can modify an image before pushing it to the
  /// > renderer. For example, Chrome
  /// > [degrades the resolution of images on low-end devices](https://crbug.com/1187043#c7).
  /// > In such cases, `naturalHeight` will consider the height of the image
  /// > modified
  /// > by such browser interventions as the natural height, and returns this
  /// > value.
  external int get naturalHeight;

  /// The read-only [HTMLImageElement] interface's
  /// **`complete`** attribute is a Boolean value which indicates
  /// whether or not the image has completely loaded.
  external bool get complete;

  /// The read-only [HTMLImageElement] property
  /// **`currentSrc`** indicates the URL of the image which is
  /// currently presented in the `img` element it represents.
  external String get currentSrc;

  /// The
  /// **`HTMLImageElement.referrerPolicy`**
  /// property reflects the HTML
  /// [`referrerpolicy`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#referrerpolicy)
  /// attribute of the
  /// `img` element defining which referrer is sent when fetching the
  /// resource.
  external String get referrerPolicy;
  external set referrerPolicy(String value);

  /// The **`decoding`** property of the [HTMLImageElement] interface provides a
  /// hint to the browser as to how it should decode the image. More
  /// specifically, whether it should wait for the image to be decoded before
  /// presenting other content updates or not.
  external String get decoding;
  external set decoding(String value);

  /// The [HTMLImageElement] property **`loading`** is a string whose value
  /// provides a hint to the  on how to handle the loading of the image which is
  /// currently outside the window's .
  ///
  /// This helps to optimize the loading of the document's contents by
  /// postponing loading the image until it's expected to be needed, rather than
  /// immediately during the initial page load.
  external String get loading;
  external set loading(String value);

  /// The **`fetchPriority`** property of the [HTMLImageElement] interface
  /// represents a hint to the browser indicating how it should prioritize
  /// fetching a particular image relative to other images.
  /// It reflects the
  /// [`fetchpriority`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#fetchpriority)
  /// attribute of the corresponding `img` element.
  ///
  /// The property allows a developer to signal that fetching a particular image
  /// early in the loading process has more or less impact on user experience
  /// than a browser can reasonably infer when assigning an internal priority.
  /// This in turn allows the browser to increase or decrease the priority, and
  /// potentially load the image earlier or later than it would otherwise.
  /// The property should be used sparingly, as excessive or incorrect
  /// prioritization can degrade performance.
  ///
  /// The fetch priority can be used to complement
  /// [preloading](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel/preload),
  /// allowing a developer to boost the priority ahead of less-impactful
  /// resources that have a higher default priority.
  /// For example, if a developer knows that a particular image significantly
  /// contributes to the website's  (LCP) they could add [`<link
  /// rel="preload">`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel/preload)
  /// for the image and then further boost the priority using the
  /// `fetchpriority` property.
  ///
  /// Note that both the internal priority of any fetch operation, and the
  /// impact of `fetchPriority` on the priority, are entirely browser dependent.
  external String get fetchPriority;
  external set fetchPriority(String value);

  /// The read-only [HTMLImageElement] property
  /// **`x`** indicates the x-coordinate of the
  /// `img` element's left border edge relative to the root element's
  /// origin.
  ///
  /// The `x` and [HTMLImageElement.y] properties are only valid
  /// for an image if its `display` property has the computed value
  /// `table-column` or `table-column-group`. In other words: it has
  /// either of those values set explicitly on it, or it has inherited it from a
  /// containing
  /// element, or by being located within a column described by either `col`
  /// or `colgroup`.
  external int get x;

  /// The read-only [HTMLImageElement] property
  /// **`y`** indicates the y-coordinate of the
  /// `img` element's top border edge relative to the root element's
  /// origin.
  ///
  /// The [HTMLImageElement.x] and `y` properties are only valid
  /// for an image if its `display` property has the computed value
  /// `table-column` or `table-column-group`. In other words: it has
  /// either of those values set explicitly on it, or it has inherited it from a
  /// containing
  /// element, or by being located within a column described by either
  /// `col` or `colgroup`.
  external int get y;

  /// The [HTMLImageElement]
  /// interface's _deprecated_ **`name`** property specifies
  /// a name for the element. This has been replaced by the [Element.id]
  /// property available on all elements.
  external String get name;
  external set name(String value);
  external String get lowsrc;
  external set lowsrc(String value);

  /// The _obsolete_ **`align`**
  /// property of the [HTMLImageElement] interface is a string which indicates
  /// how to position the image relative to its container.
  ///
  /// You should instead use the
  /// CSS property , which does in fact also work on images
  /// despite its name. You can also use the `float` property to float the image
  /// to the left or right margin.
  ///
  /// The `align` property reflects the HTML
  /// [`align`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#align)
  /// content attribute.
  external String get align;
  external set align(String value);

  /// The
  /// _obsolete_ **`hspace`** property of the
  /// [HTMLImageElement] interface specifies the number of pixels of empty
  /// space to leave empty on the left and right sides of the `img` element
  /// when laying out the page.
  ///
  /// This property reflects the
  /// [`hspace`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#hspace)
  /// attribute.
  external int get hspace;
  external set hspace(int value);

  /// The _obsolete_ **`vspace`** property of the
  /// [HTMLImageElement] interface specifies the number of pixels of empty space
  /// to leave empty on the top and bottom of the `img` element when laying
  /// out the page.
  external int get vspace;
  external set vspace(int value);

  /// The _deprecated_ property **`longDesc`** on
  /// the [HTMLImageElement] interface specifies the URL of a text or HTML file
  /// which contains a long-form description of the image. This can be used to
  /// provide optional added details beyond the short description provided in
  /// the
  /// [`title`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/title)
  /// attribute.
  external String get longDesc;
  external set longDesc(String value);

  /// The obsolete [HTMLImageElement]
  /// property **`border`** specifies the number of pixels thick the
  /// border surrounding the image should be. A value of 0, the default,
  /// indicates that no
  /// border should be drawn.
  ///
  /// You should _not_ use this property! Instead, you should use CSS to style
  /// the
  /// border. The `border` property or its longhand properties to not only set
  /// the thickness of the border but to potentially apply a wide variety of
  /// other styling
  /// options to it.
  ///
  /// The width, specifically, is controlled using the writing-mode aware
  /// , ,
  /// , and
  /// properties.
  ///
  /// For compatibility (or perhaps other) reasons, you can use the older
  /// properties instead
  /// (or in addition): , ,
  /// , and .
  external String get border;
  external set border(String value);
}

/// Implemented by the `video` element, the **`HTMLVideoElement`** interface
/// provides special properties and methods for manipulating video objects. It
/// also inherits properties and methods of [HTMLMediaElement] and
/// [HTMLElement].
///
/// The list of
/// [supported media formats](https://developer.mozilla.org/en-US/docs/Web/Media/Guides/Formats)
/// varies from one browser to the other. You should either provide your video
/// in a single format that all the relevant browsers supports, or provide
/// multiple video sources in enough different formats that all the browsers you
/// need to support are covered.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement).
extension type HTMLVideoElement._(JSObject _)
    implements HTMLMediaElement, JSObject {
  /// Creates an [HTMLVideoElement] using the tag 'video'.
  HTMLVideoElement() : _ = document.createElement('video');

  /// The **[HTMLVideoElement]** method
  /// **`getVideoPlaybackQuality()`** creates and returns a
  /// [VideoPlaybackQuality] object containing metrics including how many
  /// frames have been lost.
  ///
  /// The data returned can be used to evaluate the quality of the video stream.
  external VideoPlaybackQuality getVideoPlaybackQuality();

  /// The **[HTMLVideoElement]** method
  /// **`requestPictureInPicture()`** issues an asynchronous request
  /// to display the video in picture-in-picture mode.
  ///
  /// It's not guaranteed that the video will be put into picture-in-picture. If
  /// permission
  /// to enter that mode is granted, the returned `Promise` will resolve and the
  /// video will receive a [HTMLVideoElement.enterpictureinpicture_event] event
  /// to let it know that it's now in picture-in-picture.
  external JSPromise<PictureInPictureWindow> requestPictureInPicture();

  /// The **`requestVideoFrameCallback()`** method of the [HTMLVideoElement]
  /// interface registers a callback function that runs when a new video frame
  /// is sent to the compositor. This enables developers to perform efficient
  /// operations on each video frame.
  external int requestVideoFrameCallback(VideoFrameRequestCallback callback);

  /// The **`cancelVideoFrameCallback()`** method of the [HTMLVideoElement]
  /// interface cancels a previously-registered video frame callback.
  external void cancelVideoFrameCallback(int handle);

  /// The **`width`** property of the [HTMLVideoElement] interface returns an
  /// integer that reflects the `width` attribute of the `video` element,
  /// specifying the displayed width of the resource in CSS pixels.
  external int get width;
  external set width(int value);

  /// The **`height`** property of the [HTMLVideoElement] interface returns an
  /// integer that reflects the `height` attribute of the `video` element,
  /// specifying the displayed height of the resource in CSS pixels.
  external int get height;
  external set height(int value);

  /// The [HTMLVideoElement] interface's read-only **`videoWidth`** property
  /// indicates the
  /// [intrinsic width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/videoHeight#about_intrinsic_width_and_height)
  /// of the video, expressed in CSS pixels.
  /// In simple terms, this is the width of the media in its natural size.
  ///
  /// See [`HTMLVideoElement.videoHeight` > About intrinsic width and
  /// height](/en-US/docs/Web/API/HTMLVideoElement/videoHeight#about_intrinsic_width_and_height)
  /// for more details.
  external int get videoWidth;

  /// The [HTMLVideoElement] interface's read-only **`videoHeight`** property
  /// indicates the [intrinsic height](#about_intrinsic_width_and_height) of the
  /// video, expressed in CSS pixels.
  /// In simple terms, this is the height of the media in its natural size.
  external int get videoHeight;

  /// The **`poster`** property of the [HTMLVideoElement] interface is a string
  /// that reflects the URL for an image to be shown while no video data is
  /// available. If the property does not represent a valid URL, no poster frame
  /// will be shown.
  ///
  /// It reflects the `poster` attribute of the `video` element.
  external String get poster;
  external set poster(String value);
  external bool get playsInline;
  external set playsInline(bool value);
  external EventHandler get onenterpictureinpicture;
  external set onenterpictureinpicture(EventHandler value);
  external EventHandler get onleavepictureinpicture;
  external set onleavepictureinpicture(EventHandler value);

  /// The [HTMLVideoElement] **`disablePictureInPicture`** property reflects the
  /// HTML attribute indicating whether the picture-in-picture feature is
  /// disabled for the current element.
  ///
  /// This value only represents a request from the website to the user agent.
  /// User configuration may change the eventual behavior—for example, Firefox
  /// users can change the
  /// `media.videocontrols.picture-in-picture.respect-disablePictureInPicture`
  /// setting to ignore the request to disable PiP.
  external bool get disablePictureInPicture;
  external set disablePictureInPicture(bool value);
}

/// The **`HTMLMediaElement`** interface adds to [HTMLElement] the properties
/// and methods needed to support basic media-related capabilities that are
/// common to audio and video.
///
/// The [HTMLVideoElement] and [HTMLAudioElement] elements both inherit this
/// interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement).
extension type HTMLMediaElement._(JSObject _) implements HTMLElement, JSObject {
  static const int NETWORK_EMPTY = 0;

  static const int NETWORK_IDLE = 1;

  static const int NETWORK_LOADING = 2;

  static const int NETWORK_NO_SOURCE = 3;

  static const int HAVE_NOTHING = 0;

  static const int HAVE_METADATA = 1;

  static const int HAVE_CURRENT_DATA = 2;

  static const int HAVE_FUTURE_DATA = 3;

  static const int HAVE_ENOUGH_DATA = 4;

  /// The [HTMLMediaElement] method
  /// **`load()`** resets the media element to its initial state and
  /// begins the process of selecting a media source and loading the media in
  /// preparation
  /// for playback to begin at the beginning.
  ///
  /// The amount of media data that is
  /// prefetched is determined by the value of the element's
  /// [`preload`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#preload)
  /// attribute.
  ///
  /// This method is generally only useful when you've made dynamic changes to
  /// the set of
  /// sources available for the media element, either by changing the element's
  /// [`src`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#src)
  /// attribute or by adding or removing
  /// `source` elements nested within the media element itself.
  /// `load()` will reset the element and rescan the available sources, thereby
  /// causing the changes to take effect.
  external void load();

  /// The [HTMLMediaElement] method **`canPlayType()`** reports how likely it is
  /// that the current browser will be able to play media of a given
  /// [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types).
  external CanPlayTypeResult canPlayType(String type);

  /// The **`HTMLMediaElement.fastSeek()`** method quickly seeks the
  /// media to the new time with precision tradeoff.
  ///
  /// > [!NOTE]
  /// > If you need to seek with precision, you should set
  /// > [`HTMLMediaElement.currentTime`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/currentTime)
  /// > instead.
  external void fastSeek(num time);
  external JSObject getStartDate();

  /// The [HTMLMediaElement]
  /// **`play()`** method attempts to begin playback of the media.
  /// It returns a `Promise` which is resolved when playback has been
  /// successfully started.
  ///
  /// Failure to begin playback for any reason, such as
  /// permission issues, result in the promise being rejected.
  external JSPromise<JSAny?> play();

  /// The **`HTMLMediaElement.pause()`** method will pause playback
  /// of the media, if the media is already in a paused state this method will
  /// have no effect.
  external void pause();

  /// The **`addTextTrack()`** method of the [HTMLMediaElement] interface
  /// creates a new [TextTrack] object and adds it to the media element. It
  /// fires an [TextTrackList.addtrack_event] event on this media element's
  /// [HTMLMediaElement.textTracks]. This method can't be used on a
  /// [TextTrackList] interface, only an [HTMLMediaElement].
  external TextTrack addTextTrack(
    TextTrackKind kind, [
    String label,
    String language,
  ]);

  /// The **`setSinkId()`** method of the [HTMLMediaElement] interface sets the
  /// ID of the audio device to use for output and returns a `Promise`.
  ///
  /// This only works when the application is permitted to use the specified
  /// device.
  /// For more information see the
  /// [security requirements](#security_requirements) below.
  external JSPromise<JSAny?> setSinkId(String sinkId);

  /// The **`setMediaKeys()`** method of the [HTMLMediaElement] interface sets
  /// the [MediaKeys] that will be used to decrypt media during playback.
  ///
  /// It returns a `Promise` that fulfils if the new keys are successfully set,
  /// or rejects if keys cannot be set.
  external JSPromise<JSAny?> setMediaKeys(MediaKeys? mediaKeys);

  /// The **`captureStream()`** method of the [HTMLMediaElement] interface
  /// returns a [MediaStream] object which is streaming a real-time capture of
  /// the content being rendered in the media element.
  ///
  /// This can be used, for example, as a source for a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [RTCPeerConnection].
  external MediaStream captureStream();

  /// The **`HTMLMediaElement.error`** property is the
  /// [MediaError] object for the most recent error, or `null` if
  /// there has not been an error. When an [HTMLMediaElement.error_event] event
  /// is received by the
  /// element, you can determine details about what happened by examining this
  /// object.
  external MediaError? get error;

  /// The **`HTMLMediaElement.src`** property reflects the value of
  /// the HTML media element's `src` attribute, which indicates the URL of a
  /// media
  /// resource to use in the element.
  ///
  /// > [!NOTE]
  /// > The best way to know the URL of the media resource currently
  /// > in active use in this element is to look at the value of the
  /// > [HTMLMediaElement.currentSrc] attribute, which also takes
  /// > into account selection of a best or preferred media resource from a list
  /// > provided in
  /// > an [HTMLSourceElement] (which represents a `source`
  /// > element).
  external String get src;
  external set src(String value);

  /// The **`srcObject`** property of the
  /// [HTMLMediaElement] interface sets or returns the object which serves as
  /// the source of the media associated with the [HTMLMediaElement], or `null`
  /// if not assigned.
  ///
  /// The object can be a [MediaStream], a [MediaSource], a
  /// [Blob], or a [File] (which inherits from `Blob`).
  ///
  /// > [!NOTE]
  /// > As of March 2020, only Safari has full support for `srcObject`, i.e.
  /// > using `MediaSource`, `MediaStream`, `Blob`, and `File` objects as
  /// > values. Other browsers support `MediaStream` objects; until they catch
  /// > up, consider falling back to creating a URL with
  /// > [URL.createObjectURL_static] and assigning it to [HTMLMediaElement.src]
  /// > (see below for an example). In addition, as of version 108 Chromium
  /// > supports attaching a dedicated worker `MediaSource` object by assigning
  /// > that object's [MediaSourceHandle] instance (transferred from the worker)
  /// > to `srcObject`.
  external MediaProvider? get srcObject;
  external set srcObject(MediaProvider? value);

  /// The **`HTMLMediaElement.currentSrc`** property contains the
  /// absolute URL of the chosen media resource. This could happen, for example,
  /// if the web
  /// server selects a media file based on the resolution of the user's display.
  /// The value
  /// is an empty string if the `networkState` property is `EMPTY`.
  external String get currentSrc;

  /// The **`HTMLMediaElement.crossOrigin`** property is the CORS setting for
  /// this media element. See
  /// [CORS settings attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/crossorigin)
  /// for details.
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The
  /// **`HTMLMediaElement.networkState`** property indicates the
  /// current state of the fetching of media over the network.
  external int get networkState;

  /// The **`preload`** property of the [HTMLMediaElement] interface is a string
  /// that provides a hint to the browser about what the author thinks will lead
  /// to the best user experience.
  ///
  /// It reflects the `preload` attribute of the `audio` element and the `video`
  /// element.
  external String get preload;
  external set preload(String value);

  /// The **`buffered`** read-only property of [HTMLMediaElement] objects
  /// returns a new static
  /// [normalized `TimeRanges` object](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges#normalized_timeranges_objects)
  /// that represents the ranges of the media resource, if any, that the user
  /// agent has buffered at the moment the `buffered` property is accessed.
  external TimeRanges get buffered;

  /// The **`HTMLMediaElement.readyState`** property indicates the
  /// readiness state of the media.
  external int get readyState;

  /// The **`seeking`** read-only property of the [HTMLMediaElement] interface
  /// is a Boolean indicating whether the resource, the `audio` or `video`, is
  /// in the process of seeking to a new position.
  external bool get seeking;

  /// The [HTMLMediaElement] interface's
  /// **`currentTime`** property specifies the current playback time
  /// in seconds.
  ///
  /// Changing the value of `currentTime` seeks the media to
  /// the new time.
  external double get currentTime;
  external set currentTime(num value);

  /// The _read-only_ [HTMLMediaElement]
  /// property **`duration`** indicates the length of the element's
  /// media in seconds.
  external double get duration;

  /// The read-only **`HTMLMediaElement.paused`** property
  /// tells whether the media element is paused.
  external bool get paused;

  /// The **`HTMLMediaElement.defaultPlaybackRate`** property indicates the
  /// default playback rate for the media.
  external double get defaultPlaybackRate;
  external set defaultPlaybackRate(num value);

  /// The **`HTMLMediaElement.playbackRate`** property sets the rate at which
  /// the media is being played back. This is used to implement user controls
  /// for fast forward, slow motion, and so forth. The normal playback rate is
  /// multiplied by this value to obtain the current rate, so a value of 1.0
  /// indicates normal speed.
  ///
  /// A negative `playbackRate` value indicates that the media should be played
  /// backwards, but support for this is not yet widespread. (See
  /// [browser compatibility](#browser_compatibility) for details.)
  ///
  /// The audio is muted when the fast forward or slow motion is outside a
  /// useful range (for example, Gecko mutes the sound outside the range `0.25`
  /// to `4.0`).
  ///
  /// The pitch of the audio is corrected by default. You can disable pitch
  /// correction using the [HTMLMediaElement.preservesPitch] property.
  external double get playbackRate;
  external set playbackRate(num value);

  /// The **`HTMLMediaElement.preservesPitch`** property determines whether or
  /// not the browser should adjust the pitch of the audio to compensate for
  /// changes to the playback rate made by setting
  /// [HTMLMediaElement.playbackRate].
  external bool get preservesPitch;
  external set preservesPitch(bool value);

  /// The **`played`** read-only property of the [HTMLMediaElement] interface
  /// indicates the time ranges the resource, an `audio` or `video` media file,
  /// has played. It returns a new [TimeRanges] object that contains the ranges
  /// of the media source that the browser has played, if any, at the time the
  /// attribute is evaluated.
  external TimeRanges get played;

  /// The **`seekable`** read-only property of [HTMLMediaElement] objects
  /// returns a new static
  /// [normalized `TimeRanges` object](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges#normalized_timeranges_objects)
  /// that represents the ranges of the media resource, if any, that the user
  /// agent is able to seek to at the time `seekable` property is accessed.
  external TimeRanges get seekable;

  /// The **`HTMLMediaElement.ended`** property indicates whether the media
  /// element has ended playback.
  external bool get ended;

  /// The **`HTMLMediaElement.autoplay`**
  /// property reflects the
  /// [`autoplay`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#autoplay)
  /// HTML attribute, indicating
  /// whether playback should automatically begin as soon as enough media is
  /// available to do
  /// so without interruption.
  ///
  /// A media element whose source is a [MediaStream] and whose
  /// `autoplay` property is `true` will begin playback when it becomes
  /// active (that is, when [MediaStream.active] becomes `true`).
  ///
  /// > [!NOTE]
  /// > Sites which automatically play audio (or videos with an audio
  /// > track) can be an unpleasant experience for users, so it should be
  /// > avoided when
  /// > possible. If you must offer autoplay functionality, you should make it
  /// > opt-in
  /// > (requiring a user to specifically enable it). However, autoplay can be
  /// > useful when
  /// > creating media elements whose source will be set at a later time, under
  /// > user control.
  ///
  /// For a much more in-depth look at autoplay, autoplay blocking, and how to
  /// respond when
  /// autoplay is blocked by the user's browser, see our article
  /// [Autoplay guide for media and Web Audio APIs](https://developer.mozilla.org/en-US/docs/Web/Media/Guides/Autoplay).
  external bool get autoplay;
  external set autoplay(bool value);

  /// The **`HTMLMediaElement.loop`** property reflects the
  /// [`loop`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#loop)
  /// HTML attribute, which controls whether the media element should start over
  /// when it reaches the end.
  external bool get loop;
  external set loop(bool value);

  /// The **`HTMLMediaElement.controls`** property reflects the
  /// [`controls`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#controls)
  /// HTML attribute, which controls whether user
  /// interface controls for playing the media item will be displayed.
  external bool get controls;
  external set controls(bool value);

  /// The **`HTMLMediaElement.volume`** property sets the volume at
  /// which the media will be played.
  external double get volume;
  external set volume(num value);

  /// The **`HTMLMediaElement.muted`** property indicates whether the media
  /// element is muted.
  external bool get muted;
  external set muted(bool value);

  /// The **`HTMLMediaElement.defaultMuted`** property reflects the
  /// [`muted`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#muted)
  /// HTML attribute, which indicates whether the media element's audio output
  /// should be muted by default. This property has no dynamic effect. To mute
  /// and unmute the audio output, use the [HTMLMediaElement.muted] property.
  external bool get defaultMuted;
  external set defaultMuted(bool value);

  /// The read-only **`audioTracks`**
  /// property on [HTMLMediaElement] objects returns
  /// an [AudioTrackList] object listing all of the [AudioTrack]
  /// objects representing the media element's audio tracks.
  ///
  /// The media element may be
  /// either an `audio` element or a `video` element.
  ///
  /// The returned list is _live_; that is, as tracks are added to and removed
  /// from
  /// the media element, the list's contents change dynamically. Once you have a
  /// reference to
  /// the list, you can monitor it for changes to detect when new audio tracks
  /// are added or
  /// existing ones removed. See
  /// [AudioTrackList events](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList#events)
  /// to learn more about watching for changes to a media element's track list.
  external AudioTrackList get audioTracks;

  /// The read-only **`videoTracks`**
  /// property on [HTMLMediaElement] objects returns a
  /// [VideoTrackList] object listing all of the [VideoTrack]
  /// objects representing the media element's video tracks.
  ///
  /// The returned list is _live_; that is, as tracks are added to and removed
  /// from
  /// the media element, the list's contents change dynamically. Once you have a
  /// reference to
  /// the list, you can monitor it for changes to detect when new video tracks
  /// are added or
  /// existing ones removed. See
  /// [VideoTrackList events](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList#events)
  /// to learn more about watching for changes to a media element's track list.
  external VideoTrackList get videoTracks;

  /// The read-only **`textTracks`**
  /// property on [HTMLMediaElement] objects returns a
  /// [TextTrackList] object listing all of the [TextTrack]
  /// objects representing the media element's text tracks, in the same order as
  /// in
  /// the list of text tracks.
  ///
  /// You can detect when tracks are added to and removed from an
  /// [`<audio>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio)
  /// or
  /// [`<video>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video)
  /// element
  /// using the `addtrack` and `removetrack` events. However, these
  /// events aren't sent directly to the media element itself. Instead, they're
  /// sent to the
  /// track list object of the
  /// [`HTMLMediaElement`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement)
  /// that corresponds to the type of track that was added to the element
  ///
  /// The returned list is _live_; that is, as tracks are added to and removed
  /// from
  /// the media element, the list's contents change dynamically. Once you have a
  /// reference to
  /// the list, you can monitor it for changes to detect when new text tracks
  /// are added or
  /// existing ones removed.
  ///
  /// See
  /// [TextTrackList events](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList#events)
  /// to learn
  /// more about watching for changes to a media element's track list.
  external TextTrackList get textTracks;

  /// The **`sinkId`** read-only property of the [HTMLMediaElement] interface
  /// returns a string that is the unique ID of the device to be used for
  /// playing audio output.
  ///
  /// This ID should be one of the [MediaDeviceInfo.deviceId] values returned
  /// from [MediaDevices.enumerateDevices].
  /// If the user agent default device is being used, it returns an empty
  /// string.
  external String get sinkId;

  /// The read-only **`HTMLMediaElement.mediaKeys`** property returns a
  /// [MediaKeys] object, that is a set of keys that the element can use for
  /// decryption of media data during playback.
  external MediaKeys? get mediaKeys;
  external EventHandler get onencrypted;
  external set onencrypted(EventHandler value);
  external EventHandler get onwaitingforkey;
  external set onwaitingforkey(EventHandler value);

  /// The **`remote`** read-only property of the [HTMLMediaElement] interface
  /// returns the [RemotePlayback] object associated with the media element. The
  /// `RemotePlayback` object allow the control of remote devices playing the
  /// media.
  external RemotePlayback get remote;

  /// The **`disableRemotePlayback`** property of the [HTMLMediaElement]
  /// interface determines whether the media element is allowed to have a remote
  /// playback UI.
  external bool get disableRemotePlayback;
  external set disableRemotePlayback(bool value);
}

/// The **`MediaError`** interface represents an error which occurred while
/// handling media in an HTML media element based on [HTMLMediaElement], such as
/// `audio` or `video`.
///
/// A `MediaError` object describes the error in general terms using a numeric
/// `code` categorizing the kind of error, and a `message`, which provides
/// specific diagnostics about what went wrong.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaError).
extension type MediaError._(JSObject _) implements JSObject {
  static const int MEDIA_ERR_ABORTED = 1;

  static const int MEDIA_ERR_NETWORK = 2;

  static const int MEDIA_ERR_DECODE = 3;

  static const int MEDIA_ERR_SRC_NOT_SUPPORTED = 4;

  /// The read-only property **`MediaError.code`** returns a numeric
  /// value which represents the kind of error that occurred on a media element.
  /// To get a text
  /// string with specific diagnostic information, see [MediaError.message].
  external int get code;

  /// The read-only property **`MediaError.message`** returns a
  /// human-readable string offering specific
  /// diagnostic details related to the error described by the `MediaError`
  /// object,
  /// or an empty string (`""`) if no diagnostic information can be determined
  /// or
  /// provided.
  external String get message;
}

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

/// The **`TextTrackList`** interface is used to represent a list of the text
/// tracks defined for the associated video or audio element, with each track
/// represented by a separate [textTrack] object in the list.
///
/// Text tracks can be added to a media element declaratively using the `track`
/// element or programmatically using the [HTMLMediaElement.addTextTrack]
/// method.
///
/// An instance of this object can be retrieved using the
/// [HTMLMediaElement.textTracks] property of an [HTMLMediaElement] object.
///
/// For a given [HTMLMediaElement] object _media_, the individual tracks can be
/// accessed using:
///
/// - `media.TextTracks[n]`, to get the n-th text track from the object's list
///   of text tracks
/// - the
///   [`media.textTracks.getTrackById()`](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/getTrackById)
///   method
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList).
extension type TextTrackList._(JSObject _) implements EventTarget, JSObject {
  external TextTrack operator [](int index);

  /// The **[TextTrackList]** method
  /// **`getTrackById()`** returns the first
  /// [TextTrack] object from the track list whose
  /// [`id`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id)
  /// matches the
  /// specified string. This lets you find a specified track if you know its ID
  /// string.
  external TextTrack? getTrackById(String id);

  /// The read-only **[TextTrackList]**
  /// property **`length`** returns the number of entries in the
  /// `TextTrackList`, each of which is a [TextTrack] representing
  /// one track in the media element.
  ///
  /// A value of 0 indicates that there are no text
  /// tracks in the media.
  external int get length;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

/// The **`TextTrack`** interface of the
/// [WebVTT API](https://developer.mozilla.org/en-US/docs/Web/API/WebVTT_API)
/// represents a text track associated with a media element.
///
/// An object of this type owns the list of [VTTCue] objects that will be
/// displayed over the video at various points.
///
/// `TextTrack` objects can be added to a [HTMLVideoElement] or
/// [HTMLAudioElement] element using the [HTMLMediaElement.addTextTrack] method,
/// which has the same effect as adding text tracks declaratively using `track`
/// elements inside a `video` or `audio` element.
/// The `TextTrack` objects are stored in a [TextTrackList], which can be
/// retrieved using the [HTMLMediaElement.textTracks] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack).
extension type TextTrack._(JSObject _) implements EventTarget, JSObject {
  /// The **`addCue()`** method of the [TextTrack] interface adds a new cue to
  /// the list of cues.
  external void addCue(TextTrackCue cue);

  /// The **`removeCue()`** method of the [TextTrack] interface removes a cue
  /// from the list of cues.
  external void removeCue(TextTrackCue cue);

  /// The **`kind`** read-only property of the [TextTrack] interface returns the
  /// kind of text track this object represents. This decides how the track will
  /// be handled by a user agent.
  external TextTrackKind get kind;

  /// The **`label`** read-only property of the [TextTrack] interface returns a
  /// human-readable label for the text track, if it is available.
  external String get label;

  /// The **`language`** read-only property of the [TextTrack] interface returns
  /// the language of the text track.
  ///
  /// This uses the same values as the HTML
  /// [`lang`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang)
  /// attribute. These values are documented in `5646, "Tags for Identifying
  /// Languages (also known as BCP 47)"`.
  external String get language;

  /// The **`id`** read-only property of the [TextTrack] interface returns the
  /// ID of the track if it has one.
  external String get id;

  /// The **`inBandMetadataTrackDispatchType`** read-only property of the
  /// [TextTrack] interface returns the text track's in-band metadata dispatch
  /// type of the text track represented by the [TextTrack] object.
  ///
  /// An in-band metadata dispatch type is a string extracted from a media
  /// resource specifically for in-band metadata tracks. An example of a media
  /// resource that might have such tracks is a TV station streaming a broadcast
  /// on the web. Text Tracks may be used to include metadata for ad targeting,
  /// additional information such as recipe data during a cooking show, or
  /// trivia game data during a game show.
  ///
  /// The value of this attribute could be used to attach these tracks to
  /// dedicated script modules as they are loaded.
  external String get inBandMetadataTrackDispatchType;

  /// The [TextTrack] interface's
  /// **`mode`** property is a string specifying and controlling the
  /// text track's mode: `disabled`, `hidden`, or
  /// `showing`. You can read this value to determine the current mode,
  /// and you can change this value to switch modes.
  ///
  /// Safari additionally requires the **`default`**
  /// boolean attribute to be set to true when implementing your own video
  /// player controls in
  /// order for the subtitles cues to be shown.
  ///
  /// ### Value
  ///
  /// A string which indicates the track's current mode. One of:
  ///
  /// - `disabled`
  ///   - : The text track is currently disabled. While the track's presence is exposed in the
  /// DOM, the user agent is otherwise ignoring it. No cues are active, no
  /// events are being
  /// fired, and the user agent won't attempt to obtain the track's cues. This
  /// is the
  /// default value, unless the text track has the
  /// [`default`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#default)
  /// Boolean attribute is specified, in which case the default is `showing`.
  /// - `hidden`
  ///   - : The text track is currently active but the cues aren't being displayed. If the user
  /// agent hasn't tried to obtain the track's cues yet, it will do so soon
  /// (thereby
  /// populating the track's [TextTrack.cues] property). The user agent is
  /// keeping a list of the active cues (in the track's [TextTrack.activeCues]
  /// property) and events are being fired at the corresponding times, even
  /// though the text isn't being displayed.
  /// - `showing`
  ///   - : The text track is currently enabled and is visible. If the track's cues list hasn't
  /// been obtained yet, it will be soon. The [TextTrack.activeCues]
  /// list is being maintained and events are firing at the appropriate
  /// times; the track's text is also being drawn appropriately based on the
  /// styling and the
  /// track's [TextTrack.kind]. This is the default value if the text
  /// track's
  /// [`default`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/track#default)
  /// Boolean attribute is specified.
  external TextTrackMode get mode;
  external set mode(TextTrackMode value);

  /// The **`cues`** read-only property of the [TextTrack] interface returns a
  /// [TextTrackCueList] object containing all of the track's cues.
  external TextTrackCueList? get cues;

  /// The **`activeCues`** read-only property of the [TextTrack] interface
  /// returns a [TextTrackCueList] object listing the currently active cues.
  external TextTrackCueList? get activeCues;
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);

  /// The read-only **`sourceBuffer`** property of the [TextTrack] interface
  /// returns the
  /// [SourceBuffer] that created the track, or null if the track was not
  /// created by a [SourceBuffer] or the [SourceBuffer] has been
  /// removed from the [MediaSource.sourceBuffers] attribute of its parent
  /// media source.
  external SourceBuffer? get sourceBuffer;
}

/// The **`TextTrackCueList`** interface of the
/// [WebVTT API](https://developer.mozilla.org/en-US/docs/Web/API/WebVTT_API) is
/// an array-like object that represents a dynamically updating list of
/// [TextTrackCue] objects.
///
/// An instance of this type is obtained from [TextTrack.cues] in order to get
/// all the cues in the [TextTrack] object.
/// This interface has no constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList).
extension type TextTrackCueList._(JSObject _) implements JSObject {
  external TextTrackCue operator [](int index);

  /// The **`getCueById()`** method of the [TextTrackCueList] interface returns
  /// the first [VTTCue] in the list represented by the `TextTrackCueList`
  /// object whose identifier matches the value of `id`.
  external TextTrackCue? getCueById(String id);

  /// The **`length`** read-only property of the [TextTrackCueList] interface
  /// returns the number of cues in the list.
  external int get length;
}

/// The **`TextTrackCue`** interface of the
/// [WebVTT API](https://developer.mozilla.org/en-US/docs/Web/API/WebVTT_API) is
/// the abstract base class for the various derived cue types, such as [VTTCue];
/// you will work with these derived types rather than the base class.
///
/// These cues represent strings of text presented for some duration of time
/// during the performance of a [TextTrack]. The cue includes the start time
/// (the time at which the text will be displayed) and the end time (the time at
/// which it will be removed from the display), as well as other information.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue).
extension type TextTrackCue._(JSObject _) implements EventTarget, JSObject {
  /// The **`track`** read-only property of the [TextTrackCue] interface returns
  /// the [TextTrack] object that this cue belongs to.
  external TextTrack? get track;

  /// The **`id`** property of the [TextTrackCue] interface returns and sets the
  /// identifier for this cue.
  external String get id;
  external set id(String value);

  /// The **`startTime`** property of the [TextTrackCue] interface returns and
  /// sets the start time of the cue.
  external double get startTime;
  external set startTime(num value);

  /// The **`endTime`** property of the [TextTrackCue] interface returns and
  /// sets the end time of the cue.
  external double get endTime;
  external set endTime(num value);

  /// The **`pauseOnExit`** property of the [TextTrackCue] interface returns or
  /// sets the flag indicating whether playback of the media should pause when
  /// the end of the range to which this cue applies is reached.
  external bool get pauseOnExit;
  external set pauseOnExit(bool value);
  external EventHandler get onenter;
  external set onenter(EventHandler value);
  external EventHandler get onexit;
  external set onexit(EventHandler value);
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

/// The **`HTMLFormElement`** interface represents a `form` element in the DOM.
/// It allows access to—and, in some cases, modification of—aspects of the form,
/// as well as access to its component elements.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement).
extension type HTMLFormElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLFormElement] using the tag 'form'.
  HTMLFormElement() : _ = document.createElement('form');

  external JSObject operator [](JSAny indexOrName);

  /// The **`HTMLFormElement.submit()`** method submits a given
  /// `form`.
  ///
  /// This method is similar, but not identical to, activating a form's submit
  /// `button`. When invoking this method directly, however:
  ///
  /// - No [HTMLFormElement.submit_event] event is raised. In particular, the
  ///   form's `onsubmit` event handler is not run.
  /// - [Constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  ///   is not triggered.
  ///
  /// The [HTMLFormElement.requestSubmit] method is identical to activating a
  /// form's submit `button` and does not have these differences.
  ///
  /// A form control (such as a submit button) with a `name` or `id` of `submit`
  /// will mask the form's `submit` method. Trying to call `myForm.submit();`
  /// throws an error "submit is not a function" because in this case `submit`
  /// refers to the form control which has a `name` or `id` of `submit`.
  ///
  /// `input` with attribute type="submit" will not be submitted with the
  /// form when using **`HTMLFormElement.submit()`**, but it would be
  /// submitted when you do it with original HTML form submit.
  external void submit();

  /// The [HTMLFormElement] method **`requestSubmit()`** requests
  /// that the form be submitted using a specific submit button.
  external void requestSubmit([HTMLElement? submitter]);

  /// The **`HTMLFormElement.reset()`** method restores a form
  /// element's default values. This method does the same thing as clicking the
  /// form's
  /// [`<input
  /// type="reset">`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/reset)
  /// control.
  ///
  /// If a form control (such as a reset button) has a name or id of _reset_ it
  /// will
  /// mask the form's reset method. It does not reset other attributes in the
  /// input, such as
  /// `disabled`.
  ///
  /// Note that if [Element.setAttribute] is called to set
  /// the value of a particular attribute, a subsequent call to `reset()` won't
  /// reset the attribute to its default value, but instead will keep the
  /// attribute at
  /// whatever value the [Element.setAttribute] call set it to.
  external void reset();

  /// The **`checkValidity()`** method of the [HTMLFormElement] interface
  /// returns a boolean value which indicates if all associated controls meet
  /// any
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  /// rules applied to them. The method also fires an
  /// [HTMLElement.invalid_event] event on each invalid element, but not on the
  /// form element itself. Because there's no default browser behavior for
  /// `checkValidity()`, canceling this `invalid` event has no effect.
  ///
  /// > [!NOTE]
  /// > The  and  CSS pseudo-classes are applied to `<form>` elements based on
  /// > the validity of its owned form controls, not the validity of the
  /// > `<form>` element itself.
  external bool checkValidity();

  /// The **`reportValidity()`** method of the [HTMLFormElement] interface
  /// performs the same validity checking steps as the
  /// [HTMLFormElement.checkValidity] method. In addition, for each
  /// [HTMLElement.invalid_event] event that was fired and not canceled, the
  /// browser displays the problem to the user.
  external bool reportValidity();

  /// The **`HTMLFormElement.acceptCharset`** property represents the  for the
  /// given `form` element.
  ///
  /// The specification allows a single case-insensitive value of `"UTF-8"`,
  /// reflecting the ubiquity of this encoding (historically multiple character
  /// encodings could be specified as a comma-separated or space-separated
  /// list).
  ///
  /// This reflects the value of the form's
  /// [`accept-charset`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#accept-charset)
  /// HTML attribute.
  external String get acceptCharset;
  external set acceptCharset(String value);

  /// The **`HTMLFormElement.action`** property represents the action
  /// of the `form` element.
  ///
  /// The action of a form is the program that is executed on the server when
  /// the form is
  /// submitted. This property can be retrieved or set.
  external String get action;
  external set action(String value);

  /// The **`autocomplete`** property of the [HTMLFormElement] interface
  /// indicates whether the value of the form's controls can be automatically
  /// completed by the browser. It reflects the `form` element's
  /// [`autocomplete`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete)
  /// attribute.
  external String get autocomplete;
  external set autocomplete(String value);

  /// The **`HTMLFormElement.enctype`** property is the  of content that is used
  /// to submit the form to the server. Possible values are:
  ///
  /// - `application/x-www-form-urlencoded`: The initial default type.
  /// - `multipart/form-data`: The type that allows file `input`
  /// element(s) to upload file data.
  /// - `text/plain`: Ambiguous format, human-readable content not reliably
  ///   interpretable by computer.
  ///
  /// This value can be overridden by a
  /// [`formenctype`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#formenctype)
  /// attribute
  /// on a `button` or `input` element.
  external String get enctype;
  external set enctype(String value);

  /// The **`HTMLFormElement.encoding`** property is an alternative name for the
  /// [HTMLFormElement.enctype] element on the DOM [HTMLFormElement] object.
  external String get encoding;
  external set encoding(String value);

  /// The **`HTMLFormElement.method`** property represents the
  /// method used to submit the `form`.
  ///
  /// Unless explicitly specified, the default method is 'get'.
  external String get method;
  external set method(String value);

  /// The **`HTMLFormElement.name`** property represents the name of
  /// the current `form` element as a string.
  ///
  /// If your `Form` element contains an element named _name_ then
  /// that element overrides the `form.name` property, so that you can't access
  /// it.
  external String get name;
  external set name(String value);

  /// The **`noValidate`** property of the [HTMLFormElement] interface is a
  /// boolean value indicating if the `form` will bypass
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  /// when submitted. It reflects the `<form>` element's
  /// [`novalidate`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#novalidate)
  /// attribute; if the attribute present, the value is `true`.
  ///
  /// If this attribute is not set or the value is set to `false`, the form is
  /// validated. This can be overridden by setting the
  /// [HTMLInputElement.formNoValidate] or [HTMLButtonElement.formNoValidate]
  /// property to `true`, either via JavaScript or the HTML `formnovalidate`
  /// attribute, for the control used to submit the form.
  ///
  /// This property can be retrieved or set.
  external bool get noValidate;
  external set noValidate(bool value);

  /// The **`target`** property of the [HTMLFormElement]
  /// interface represents the target of the form's action (i.e., the frame in
  /// which to render
  /// its output).
  external String get target;
  external set target(String value);
  external String get rel;
  external set rel(String value);
  external DOMTokenList get relList;

  /// The [HTMLFormElement] property
  /// **`elements`** returns an
  /// [HTMLFormControlsCollection] listing all the form controls contained in
  /// the `form` element.
  ///
  /// Independently, you can obtain just the
  /// number of form controls using the [HTMLFormElement.length]
  /// property.
  ///
  /// You can access a particular form control in the returned collection by
  /// using either an
  /// index or the element's `name` or `id` attributes.
  ///
  /// Prior to HTML 5, the returned object was an [HTMLCollection], on which
  /// `HTMLFormControlsCollection` is based.
  ///
  /// > [!NOTE]
  /// > Similarly, you can get a list of all of the forms contained within a
  /// > given document using the document's [Document.forms] property.
  external HTMLFormControlsCollection get elements;

  /// The **`HTMLFormElement.length`**
  /// read-only property returns the number of controls in the `form`
  /// element.
  ///
  /// You can access the list of the form's controls using the
  /// [HTMLFormElement.elements] property.
  ///
  /// This includes both elements that are descendants of the `<form>`
  /// element as well as elements that are made members of the form using their
  /// `form` property.
  ///
  /// Elements that are considered for this property are: `button`,
  /// `fieldset`, `input` (with the exception
  /// that any whose type is "image" are omitted for historical reasons),
  /// `object`, `output`, `select`,
  /// and `textarea`.
  external int get length;
}

/// The **`ValidityState`** interface represents the _validity states_ that an
/// element can be in, with respect to constraint validation. Together, they
/// help explain why an element's value fails to validate, if it's not valid.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState).
extension type ValidityState._(JSObject _) implements JSObject {
  /// The read-only **`valueMissing`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if a
  /// [`required`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/required)
  /// control, such as an `input`, `select`, or `textarea`, has an empty value.
  ///
  /// If the `required` attribute is set, and no `option` is selected or a
  /// `<textarea>` or user-editable `<input>` is empty, the `valueMissing`
  /// property will be `true`. The property is only `true` if the field is
  /// required and has no value; if the field is not required, or if the field
  /// is required and has a value, the value is `false`.
  external bool get valueMissing;

  /// The read-only **`typeMismatch`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input`, after having been edited
  /// by the user, does not conform to the constraints set by the element's
  /// [`type`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#input_types)
  /// attribute.
  ///
  /// If the `type` attribute expects specific strings, such as the `email` and
  /// `url` types and the value doesn't conform to the constraints set by the
  /// type, the `typeMismatch` property will be true.
  ///
  /// The `email` input type expects one or more valid email addresses,
  /// depending on whether the
  /// [`multiple`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/multiple)
  /// attribute is present. A valid email address includes an email prefix and a
  /// domain, with or without a top level domain. If the value of the email
  /// input is not an empty string, a single valid email address, or one or more
  /// comma separated email address if the
  /// [`multiple`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/multiple)
  /// attribute is present, there is a `typeMismatch`.
  ///
  /// The `url` input type expects one or more valid URLs, depending on whether
  /// the
  /// [`multiple`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/multiple)
  /// attribute is present. A valid URL includes a protocol, optionally with an
  /// IP address, or an optional subdomain, domain, and top level domain
  /// combination. If the value of the URL input is not an empty string, a
  /// single valid URL, or one or more comma separated URLS if the
  /// [`multiple`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/multiple)
  /// attribute is present, there is a `typeMismatch`.
  ///
  /// | Input type                              | Value             | Expected value                                                 |
  /// | --------------------------------------- | ----------------- | -------------------------------------------------------------- |
  /// | `email` | `x@y` or `x@y.z`  | email address, with or without [TLD](https://developer.mozilla.org/en-US/docs/Glossary/TLD) |
  /// | `url`     | `x:` or `x://y.z` | protocol or full URL with protocol                             |
  external bool get typeMismatch;

  /// The read-only **`patternMismatch`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input`, after having been edited
  /// by the user, does not conform to the constraints set by the element's
  /// [`pattern`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/pattern)
  /// attribute.
  ///
  /// The `patternMismatch` property will be true if and only if the following
  /// conditions are all true:
  ///
  /// - the field supports the
  ///   [`pattern`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/pattern)
  ///   attribute — which means the `input` is of `type` `text`, `tel`, `email`,
  ///   `url`, `password`, or `search`
  /// - the
  ///   [`pattern`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/pattern)
  ///   attribute contains a valid regular expression
  /// - the `input` value doesn't conform to the constraints set by the
  ///   [`pattern`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/pattern)
  ///   value.
  external bool get patternMismatch;

  /// The read-only **`tooLong`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input` or `textarea`, after having
  /// been edited by the user, exceeds the maximum code-unit length established
  /// by the element's
  /// [`maxlength`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/maxlength)
  /// attribute.
  external bool get tooLong;

  /// The read-only **`tooShort`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input`, `button`, `select`,
  /// `output`, `fieldset` or `textarea`, after having been edited by the user,
  /// is less than the minimum code-unit length established by the element's
  /// `minlength` attribute.
  external bool get tooShort;

  /// The read-only **`rangeUnderflow`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input`, after having been edited
  /// by the user, does not conform to the constraints set by the element's
  /// [`min`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/min)
  /// attribute.
  ///
  /// If the field is numeric in nature, including the `date`, `month`, `week`,
  /// `time`, , `number` and `range` types and a `min` value is set, if the
  /// value doesn't conform to the constraints set by the
  /// [`min`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// value, the `rangeUnderflow` property will be true.
  external bool get rangeUnderflow;

  /// The read-only **`rangeOverflow`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input`, after having been edited
  /// by the user, does not conform to the constraints set by the element's
  /// [`max`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/max)
  /// attribute.
  ///
  /// If the field is numeric in nature, including the `date`, `month`, `week`,
  /// `time`, , `number` and `range` types and a `max` value is set, if the
  /// value doesn't conform to the constraints set by the
  /// [`max`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// value, the `rangeOverflow` property will be true.
  external bool get rangeOverflow;

  /// The read-only **`stepMismatch`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input`, after having been edited
  /// by the user, does not conform to the constraints set by the element's
  /// `step` attribute.
  ///
  /// If the field is numeric in nature, including the `date`, `month`, `week`,
  /// `time`, , `number` and `range` types and the step value is not `any`, if
  /// the value don't doesn't conform to the constraints set by the
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// and
  /// [`min`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/min)
  /// values, then `stepMismatch` will be true. If the remainder of the form
  /// control's value less the
  /// [`min`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/min)
  /// value, divided by the
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// value (which defaults to 1 if omitted) is not zero, there is a mismatch.
  external bool get stepMismatch;

  /// The read-only **`badInput`** property of the
  /// [ValidityState](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the user has provided input that the browser is
  /// unable to convert. For example, if you have a number input element whose
  /// content is a string.
  external bool get badInput;

  /// The read-only **`customError`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface returns `true` if an element doesn't meet the validation
  /// required in the custom validity set by the element's
  /// [HTMLInputElement.setCustomValidity] method.
  external bool get customError;

  /// The read-only **`valid`** property of the
  /// [`ValidityState`](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
  /// interface indicates if the value of an `input` element meets all its
  /// validation constraints, and is therefore considered to be valid.
  ///
  /// If `true`, the element matches the  CSS pseudo-class; otherwise the  CSS
  /// pseudo-class applies.
  external bool get valid;
}

/// HTML `script` elements expose the **`HTMLScriptElement`** interface, which
/// provides special properties and methods for manipulating the behavior and
/// execution of `<script>` elements (beyond the inherited [HTMLElement]
/// interface).
///
/// JavaScript files should be served with the `text/javascript`
/// [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types),
/// but browsers are lenient and block them only if the script is served with an
/// image type (`image/*`), video type (`video/*`), audio type (`audio/*`), or
/// `text/csv`. If the script is blocked, its element receives an
/// [HTMLElement.error_event] event; otherwise, it receives a
/// [Window.load_event] event.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement).
extension type HTMLScriptElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLScriptElement] using the tag 'script'.
  HTMLScriptElement() : _ = document.createElement('script');

  /// The **`supports()`** static method of the [HTMLScriptElement] interface
  /// provides a simple and consistent method to feature-detect what types of
  /// scripts are supported by the user agent.
  ///
  /// The method is expected to return `true` for classic and module scripts,
  /// which are supported by most modern browsers.
  external static bool supports(String type);

  /// The **`src`** property of the [HTMLScriptElement] interface is a string
  /// representing the URL of an external script; this can be used as an
  /// alternative to embedding a script directly within a document.
  ///
  /// It reflects the `src` attribute of the `script` element.
  external String get src;
  external set src(String value);

  /// The **`type`** property of the [HTMLScriptElement] interface is a string
  /// that reflects the type of the script.
  ///
  /// It reflects the `type` attribute of the `script` element.
  external String get type;
  external set type(String value);

  /// The **`noModule`** property of the [HTMLScriptElement] interface is a
  /// boolean value that indicates whether the script should be executed in
  /// browsers that support
  /// [ES modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules).
  /// Practically, this can be used to serve fallback scripts to older browsers
  /// that do not support JavaScript modules.
  ///
  /// It reflects the `nomodule` attribute of the `script` element.
  external bool get noModule;
  external set noModule(bool value);

  /// The **`async`** property of the [HTMLScriptElement] interface is a boolean
  /// value that controls how the script should be executed. For classic
  /// scripts, if the `async` property is set to `true`, the external script
  /// will be fetched in parallel to parsing and evaluated as soon as it is
  /// available. For
  /// [module scripts](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules),
  /// if the `async` property is set to `true`, the script and all their
  /// dependencies will be fetched in parallel to parsing and evaluated as soon
  /// as they are available.
  ///
  /// It reflects the `async` attribute of the `script` element.
  external bool get async;
  external set async(bool value);

  /// The **`defer`** property of the [HTMLScriptElement] interface is a boolean
  /// value that controls how the script should be executed. For classic
  /// scripts, if the `defer` property is set to `true`, the external script
  /// will be executed after the document has been parsed, but before firing
  /// [Document.DOMContentLoaded_event] event. For
  /// [module scripts](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules),
  /// the `defer` property has no effect.
  ///
  /// It reflects the `defer` attribute of the `script` element.
  external bool get defer;
  external set defer(bool value);

  /// The **`crossOrigin`** property of the [HTMLScriptElement] interface
  /// reflects the  settings for the script element. For classic scripts from
  /// other [origins](https://developer.mozilla.org/en-US/docs/Glossary/Origin),
  /// this controls if full error information will be exposed. For module
  /// scripts, it controls the script itself and any script it imports. See
  /// [CORS settings attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/crossorigin)
  /// for details.
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The **`text`** property of the [HTMLScriptElement] interface is a string
  /// that reflects the text content inside the `script` element. It acts the
  /// same way as the [Node.textContent] property.
  ///
  /// It reflects the `text` attribute of the `script` element.
  external String get text;
  external set text(String value);

  /// The **`integrity`** property of the [HTMLScriptElement] interface is a
  /// string that contains inline metadata that a browser can use to verify that
  /// a fetched resource has been delivered without unexpected manipulation.
  ///
  /// It reflects the `integrity` attribute of the `script` element.
  external String get integrity;
  external set integrity(String value);

  /// The **`referrerPolicy`** property of the
  /// [HTMLScriptElement] interface reflects the HTML
  /// [`referrerpolicy`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#referrerpolicy)
  /// of the `script` element, which defines how the referrer is set when
  /// fetching the script and any scripts it imports.
  external String get referrerPolicy;
  external set referrerPolicy(String value);

  /// The **`blocking`** property of the [HTMLScriptElement] interface is a
  /// string indicating that certain operations should be blocked on the
  /// fetching of the script.
  ///
  /// It reflects the `blocking` attribute of the `script` element.
  external DOMTokenList get blocking;

  /// The **`fetchPriority`** property of the [HTMLScriptElement] interface
  /// represents a hint to the browser indicating how it should prioritize
  /// fetching an external script relative to other external scripts.
  /// It reflects the
  /// [`fetchpriority`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script#fetchpriority)
  /// attribute of the `script` element.
  ///
  /// The property allows a developer to signal that fetching a particular
  /// script early or late in the loading process has more or less impact on
  /// user experience than a browser can reasonably infer when assigning an
  /// internal priority.
  /// This in turn allows the browser to increase or decrease the priority, and
  /// potentially load the script earlier or later than it would otherwise.
  /// The property should be used sparingly, as excessive or incorrect
  /// prioritization can degrade performance.
  ///
  /// The fetch priority allows you to decrease the priority of late-body
  /// scripts, or to increase the priority of `async` scripts without having to
  /// use
  /// [preloading](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel/preload).
  /// When early loading of a script is important, the priority can be used to
  /// complement preloading, boosting the priority ahead of less-impactful
  /// resources that have a higher default priority.
  ///
  /// Note that both the internal priority of any fetch operation, and the
  /// impact of `fetchPriority` on the priority, are entirely browser dependent.
  external String get fetchPriority;
  external set fetchPriority(String value);
  external String get charset;
  external set charset(String value);
  external String get event;
  external set event(String value);
  external String get htmlFor;
  external set htmlFor(String value);
}

/// The **`HTMLSlotElement`** interface of the
/// [Shadow DOM API](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_shadow_DOM)
/// enables access to the name and assigned nodes of an HTML `slot` element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement).
extension type HTMLSlotElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLSlotElement] using the tag 'slot'.
  HTMLSlotElement() : _ = document.createElement('slot');

  /// The **`assignedNodes()`** method of the [HTMLSlotElement] interface
  /// returns a sequence of the nodes assigned to this slot.
  ///
  /// If the `flatten` option is set to `true`, it returns a sequence of both
  /// the nodes assigned to this slot, as well as the nodes assigned to any
  /// other slots that are descendants of this slot. If no assigned nodes are
  /// found, it returns the slot's fallback content.
  external JSArray<Node> assignedNodes([AssignedNodesOptions options]);

  /// The **`assignedElements()`** method of the [HTMLSlotElement]
  /// interface returns a sequence of the elements assigned to this slot (and no
  /// other nodes).
  ///
  /// If the `flatten` option is set to `true`, it returns a sequence of both
  /// the elements assigned to this slot, as well as the elements assigned to
  /// any other slots that are descendants of this slot. If no assigned elements
  /// are found, it returns the slot's fallback content.
  external JSArray<Element> assignedElements([AssignedNodesOptions options]);

  /// The **`assign()`** method of the [HTMLSlotElement] interface sets the
  /// slot's _manually assigned nodes_ to an ordered set of slottables. The
  /// manually assigned nodes set is initially empty until nodes are assigned
  /// using `assign()`.
  ///
  /// > [!NOTE]
  /// > You cannot mix manually (imperative) and named (declarative, automatic)
  /// > slot assignments. Therefore, for this method to work, the shadow tree
  /// > needs to have been
  /// > [created](https://developer.mozilla.org/en-US/docs/Web/API/Element/attachShadow)
  /// > with the `slotAssignment: "manual"` option.
  external void assign([
    JSObject node1,
    JSObject node2,
    JSObject node3,
    JSObject node4,
  ]);

  /// The **`name`** property of the [HTMLSlotElement]
  /// interface returns or sets the slot name. A slot is a placeholder inside a
  /// web component
  /// that users can fill with their own markup.
  external String get name;
  external set name(String value);
}
extension type AssignedNodesOptions._(JSObject _) implements JSObject {
  external factory AssignedNodesOptions({bool flatten});

  external bool get flatten;
  external set flatten(bool value);
}

/// The **`HTMLCanvasElement`** interface provides properties and methods for
/// manipulating the layout and presentation of `canvas` elements. The
/// `HTMLCanvasElement` interface also inherits the properties and methods of
/// the [HTMLElement] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement).
extension type HTMLCanvasElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLCanvasElement] using the tag 'canvas'.
  HTMLCanvasElement() : _ = document.createElement('canvas');

  /// The **`HTMLCanvasElement.getContext()`** method returns a drawing context
  /// on the canvas, or
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// if the context identifier is not supported, or the canvas has already been
  /// set to a different context mode.
  ///
  /// Later calls to this method on the same canvas element, with the same
  /// `contextType` argument, will always return the same drawing context
  /// instance as was returned the first time the method was invoked. It is not
  /// possible to get a different drawing context object on a given canvas
  /// element.
  external RenderingContext? getContext(
    String contextId, [
    JSAny? options,
  ]);

  /// The **`HTMLCanvasElement.toDataURL()`** method returns a
  /// [data URL](https://developer.mozilla.org/en-US/docs/Web/URI/Reference/Schemes/data)
  /// containing a representation of the image in the format specified by the
  /// `type` parameter.
  ///
  /// The desired file format and image quality may be specified.
  /// If the file format is not specified, or if the given format is not
  /// supported, then the data will be exported as `image/png`.
  /// In other words, if the returned value starts with `data:image/png` for any
  /// other requested `type`, then that format is not supported.
  ///
  /// Browsers are required to support `image/png`; many will support additional
  /// formats including `image/jpeg` and `image/webp`.
  ///
  /// The created image data will have a resolution of 96dpi for file formats
  /// that support encoding resolution metadata.
  ///
  /// > **Warning:** `toDataURL()` encodes the whole image in an in-memory
  /// > string. For larger images, this can have performance implications, and
  /// > may even overflow browsers' URL length limit when assigned to
  /// > [HTMLImageElement.src]. You should generally prefer
  /// > [`toBlob()`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toBlob)
  /// > instead, in combination with [URL.createObjectURL_static].
  external String toDataURL([
    String type,
    JSAny? quality,
  ]);

  /// The **`HTMLCanvasElement.toBlob()`** method creates a [Blob] object
  /// representing the image contained in the canvas.
  /// This file may be cached on the disk or stored in memory at the discretion
  /// of the user agent.
  ///
  /// The desired file format and image quality may be specified.
  /// If the file format is not specified, or if the given format is not
  /// supported, then the data will be exported as `image/png`.
  /// Browsers are required to support `image/png`; many will support additional
  /// formats including `image/jpeg` and `image/webp`.
  ///
  /// The created image will have a resolution of 96dpi for file formats that
  /// support encoding resolution metadata.
  external void toBlob(
    BlobCallback callback, [
    String type,
    JSAny? quality,
  ]);

  /// The **`HTMLCanvasElement.transferControlToOffscreen()`** method transfers
  /// control to an [OffscreenCanvas] object, either on the main thread or on a
  /// worker.
  external OffscreenCanvas transferControlToOffscreen();

  /// The **`captureStream()`** method of the [HTMLCanvasElement] interface
  /// returns a [MediaStream]
  /// which includes a [CanvasCaptureMediaStreamTrack] containing a real-time
  /// video capture of the canvas's contents.
  external MediaStream captureStream([num frameRequestRate]);

  /// The **`HTMLCanvasElement.width`** property is a
  /// positive `integer` reflecting the
  /// [`width`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas#width)
  /// HTML
  /// attribute of the `canvas` element interpreted in CSS pixels. When the
  /// attribute is not specified, or if it is set to an invalid value, like a
  /// negative, the
  /// default value of `300` is used.
  ///
  /// When the `width` property is set the drawing buffer is always reset to
  /// blank — this is true for all context types, and even when the width is set
  /// to the same value. If you need to restore the previous content, you can
  /// save it via [CanvasRenderingContext2D.getImageData] and restore it via
  /// [CanvasRenderingContext2D.putImageData].
  ///
  /// This is one of the two properties, the other being
  /// [HTMLCanvasElement.height], that controls the size of the canvas.
  external int get width;
  external set width(int value);

  /// The **`HTMLCanvasElement.height`** property is a
  /// positive `integer` reflecting the
  /// [`height`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas#height)
  /// HTML
  /// attribute of the `canvas` element interpreted in CSS pixels. When the
  /// attribute is not specified, or if it is set to an invalid value, like a
  /// negative, the
  /// default value of `150` is used.
  ///
  /// When the `height` property is set the drawing buffer is always reset to
  /// blank — this is true for all context types, and even when the height is
  /// set to the same value. If you need to restore the previous content, you
  /// can save it via [CanvasRenderingContext2D.getImageData] and restore it via
  /// [CanvasRenderingContext2D.putImageData].
  ///
  /// This is one of the two properties, the other being
  /// [HTMLCanvasElement.width], that controls the size of the canvas.
  external int get height;
  external set height(int value);
}
extension type CanvasRenderingContext2DSettings._(JSObject _)
    implements JSObject {
  external factory CanvasRenderingContext2DSettings({
    bool alpha,
    bool desynchronized,
    PredefinedColorSpace colorSpace,
    CanvasColorType colorType,
    bool willReadFrequently,
  });

  external bool get alpha;
  external set alpha(bool value);
  external bool get desynchronized;
  external set desynchronized(bool value);
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
  external CanvasColorType get colorType;
  external set colorType(CanvasColorType value);
  external bool get willReadFrequently;
  external set willReadFrequently(bool value);
}

/// The **`CanvasRenderingContext2D`** interface, part of the
/// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
/// provides the 2D rendering context for the drawing surface of a `canvas`
/// element.
/// It is used for drawing shapes, text, images, and other objects.
///
/// The interface's properties and methods are described in the reference
/// section of this page.
/// The
/// [Canvas tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial)
/// has more explanation, examples, and resources, as well.
///
/// For
/// [`OffscreenCanvas`](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas),
/// there is an equivalent interface that provides the rendering context.
/// The offscreen rendering context inherits most of the same properties and
/// methods as the `CanvasRenderingContext2D` and is described in more detail in
/// the [OffscreenCanvasRenderingContext2D] reference page.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D).
extension type CanvasRenderingContext2D._(JSObject _) implements JSObject {
  /// The **`CanvasRenderingContext2D.getContextAttributes()`** method returns
  /// an object that contains attributes used by the context.
  ///
  /// Note that context attributes may be requested when creating the context
  /// with
  /// [`HTMLCanvasElement.getContext()`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/getContext),
  /// but the attributes that are actually supported and used may differ.
  external CanvasRenderingContext2DSettings getContextAttributes();

  /// The
  /// **`CanvasRenderingContext2D.save()`**
  /// method of the Canvas 2D API saves the entire state of the canvas by
  /// pushing the current
  /// state onto a stack.
  ///
  /// ### The drawing state
  ///
  /// The drawing state that gets saved onto a stack consists of:
  ///
  /// - The current transformation matrix.
  /// - The current clipping region.
  /// - The current dash list.
  /// - The current values of the following attributes:
  ///   - [CanvasRenderingContext2D.direction]
  ///   - [CanvasRenderingContext2D.fillStyle]
  ///   - [CanvasRenderingContext2D.filter]
  ///   - [CanvasRenderingContext2D.font]
  ///   - [CanvasRenderingContext2D.fontKerning]
  ///   - [CanvasRenderingContext2D.fontStretch]
  ///   - [CanvasRenderingContext2D.fontVariantCaps]
  ///   - [CanvasRenderingContext2D.globalAlpha]
  ///   - [CanvasRenderingContext2D.globalCompositeOperation]
  ///   - [CanvasRenderingContext2D.imageSmoothingEnabled]
  ///   - [CanvasRenderingContext2D.imageSmoothingQuality]
  ///   - [CanvasRenderingContext2D.letterSpacing]
  ///   - [CanvasRenderingContext2D.lineCap]
  ///   - [CanvasRenderingContext2D.lineDashOffset]
  ///   - [CanvasRenderingContext2D.lineJoin]
  ///   - [CanvasRenderingContext2D.lineWidth]
  ///   - [CanvasRenderingContext2D.miterLimit]
  ///   - [CanvasRenderingContext2D.shadowBlur]
  ///   - [CanvasRenderingContext2D.shadowColor]
  ///   - [CanvasRenderingContext2D.shadowOffsetX]
  ///   - [CanvasRenderingContext2D.shadowOffsetY]
  ///   - [CanvasRenderingContext2D.strokeStyle]
  ///   - [CanvasRenderingContext2D.textAlign]
  ///   - [CanvasRenderingContext2D.textBaseline]
  ///   - [CanvasRenderingContext2D.textRendering]
  ///   - [CanvasRenderingContext2D.wordSpacing]
  external void save();

  /// The
  /// **`CanvasRenderingContext2D.restore()`**
  /// method of the Canvas 2D API restores the most recently saved canvas state
  /// by popping the
  /// top entry in the drawing state stack. If there is no saved state, this
  /// method does
  /// nothing.
  ///
  /// For more information about the
  /// [drawing state](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/save#the_drawing_state),
  /// see [CanvasRenderingContext2D.save].
  external void restore();

  /// The **`CanvasRenderingContext2D.reset()`** method of the Canvas 2D API
  /// resets the rendering context to its default state, allowing it to be
  /// reused for drawing something else without having to explicitly reset all
  /// the properties.
  ///
  /// Resetting clears the backing buffer, drawing state stack, any defined
  /// paths, and styles.
  /// This includes the current
  /// [transformation](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#transformations)
  /// matrix,
  /// [compositing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#compositing)
  /// properties, clipping region, dash list,
  /// [line styles](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#line_styles),
  /// [text styles](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#text_styles),
  /// [shadows](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#shadows),
  /// [image smoothing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#image_smoothing),
  /// [filters](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#filters),
  /// and so on.
  external void reset();

  /// The **`CanvasRenderingContext2D.isContextLost()`** method of the Canvas 2D
  /// API returns `true` if the rendering context is lost (and has not yet been
  /// reset).
  /// This might occur due to driver crashes, running out of memory, and so on.
  ///
  /// If the user agent detects that the canvas backing storage is lost it will
  /// fire the
  /// [`contextlost` event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/contextlost_event)
  /// at the associated
  /// [`HTMLCanvasElement`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement).
  /// If this event is not cancelled it will attempt to reset the backing
  /// storage to the default state (this is equivalent to calling
  /// [CanvasRenderingContext2D.reset]).
  /// On success it will fire the
  /// [`contextrestored` event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/contextrestored_event),
  /// indicating that the context is ready to reinitialize and redraw.
  external bool isContextLost();

  /// The
  /// **`CanvasRenderingContext2D.scale()`**
  /// method of the Canvas 2D API adds a scaling transformation to the canvas
  /// units
  /// horizontally and/or vertically.
  ///
  /// By default, one unit on the canvas is exactly one pixel. A scaling
  /// transformation
  /// modifies this behavior. For instance, a scaling factor of 0.5 results in a
  /// unit size of
  /// 0.5 pixels; shapes are thus drawn at half the normal size. Similarly, a
  /// scaling factor
  /// of 2.0 increases the unit size so that one unit becomes two pixels; shapes
  /// are thus
  /// drawn at twice the normal size.
  external void scale(
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.rotate()`**
  /// method of the Canvas 2D API adds a rotation to the transformation matrix.
  external void rotate(num angle);

  /// The
  /// **`CanvasRenderingContext2D.translate()`**
  /// method of the Canvas 2D API adds a translation transformation to the
  /// current matrix.
  external void translate(
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.transform()`**
  /// method of the Canvas 2D API multiplies the current transformation with the
  /// matrix
  /// described by the arguments of this method. This lets you scale, rotate,
  /// translate
  /// (move), and skew the context.
  ///
  /// > [!NOTE]
  /// > See also the
  /// > [CanvasRenderingContext2D.setTransform] method, which
  /// > resets the current transform to the identity matrix and then invokes
  /// > `transform()`.
  external void transform(
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
  );

  /// The **`CanvasRenderingContext2D.getTransform()`** method of the Canvas 2D
  /// API retrieves the current transformation matrix being applied to the
  /// context.
  external DOMMatrix getTransform();

  /// The **`CanvasRenderingContext2D.setTransform()`** method of the Canvas 2D
  /// API resets (overrides) the current transformation to the identity matrix,
  /// and then invokes a transformation described by the arguments of this
  /// method. This lets you scale, rotate, translate (move), and skew the
  /// context.
  ///
  /// > [!NOTE]
  /// > See also the [CanvasRenderingContext2D.transform] method; instead of
  /// > overriding the current transform matrix, it
  /// > multiplies it with a given one.
  external void setTransform([
    JSAny aOrTransform,
    num b,
    num c,
    num d,
    num e,
    num f,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.resetTransform()`**
  /// method of the Canvas 2D API resets the current transform to the identity
  /// matrix.
  external void resetTransform();

  /// The
  /// **`CanvasRenderingContext2D.createLinearGradient()`**
  /// method of the Canvas 2D API creates a gradient along the line connecting
  /// two given
  /// coordinates.
  ///
  /// ![The gradient transitions colors along the gradient line, starting at
  /// point x0, y0 and going to x1, y1, even if those points extend the gradient
  /// line beyond the edges of the element on which the gradient is
  /// drawn.](mdn-canvas-lineargradient.png)
  ///
  /// This method returns a linear [CanvasGradient]. To be applied to a shape,
  /// the gradient must first be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties.
  ///
  /// > [!NOTE]
  /// > Gradient coordinates are global, i.e., relative to the current
  /// > coordinate space. When applied to a shape, the coordinates are NOT
  /// > relative to the
  /// > shape's coordinates.
  external CanvasGradient createLinearGradient(
    num x0,
    num y0,
    num x1,
    num y1,
  );

  /// The
  /// **`CanvasRenderingContext2D.createRadialGradient()`**
  /// method of the Canvas 2D API creates a radial gradient using the size and
  /// coordinates of
  /// two circles.
  ///
  /// This method returns a [CanvasGradient]. To be applied to a shape, the
  /// gradient must first be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties.
  ///
  /// > [!NOTE]
  /// > Gradient coordinates are global, i.e., relative to the current
  /// > coordinate space. When applied to a shape, the coordinates are NOT
  /// > relative to the
  /// > shape's coordinates.
  external CanvasGradient createRadialGradient(
    num x0,
    num y0,
    num r0,
    num x1,
    num y1,
    num r1,
  );

  /// The **`CanvasRenderingContext2D.createConicGradient()`** method of the
  /// Canvas 2D API creates a gradient around a point with given coordinates.
  ///
  /// This method returns a conic [CanvasGradient]. To be applied to a shape,
  /// the gradient must first be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties.
  ///
  /// > [!NOTE]
  /// > Gradient coordinates are global, i.e., relative to the current
  /// > coordinate space. When applied to a shape, the coordinates are NOT
  /// > relative to the shape's coordinates.
  external CanvasGradient createConicGradient(
    num startAngle,
    num x,
    num y,
  );

  /// The **`CanvasRenderingContext2D.createPattern()`** method of the Canvas 2D
  /// API creates a pattern using the specified image and repetition.
  /// This method returns a [CanvasPattern].
  ///
  /// This method doesn't draw anything to the canvas directly.
  /// The pattern it creates must be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties, after which it is
  /// applied to any subsequent drawing.
  external CanvasPattern? createPattern(
    CanvasImageSource image,
    String repetition,
  );

  /// The
  /// **`CanvasRenderingContext2D.clearRect()`**
  /// method of the Canvas 2D API erases the pixels in a rectangular area by
  /// setting them to
  /// transparent black.
  ///
  /// > [!NOTE]
  /// > Be aware that `clearRect()` may cause unintended
  /// > side effects if you're not
  /// > [using paths properly](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Drawing_shapes#drawing_paths).
  /// > Make sure to call
  /// > [CanvasRenderingContext2D.beginPath] before starting to
  /// > draw new items after calling `clearRect()`.
  external void clearRect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The
  /// **`CanvasRenderingContext2D.fillRect()`**
  /// method of the Canvas 2D API draws a rectangle that is filled according to
  /// the current
  /// [CanvasRenderingContext2D.fillStyle].
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  external void fillRect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The
  /// **`CanvasRenderingContext2D.strokeRect()`**
  /// method of the Canvas 2D API draws a rectangle that is stroked (outlined)
  /// according to
  /// the current [CanvasRenderingContext2D.strokeStyle] and other
  /// context settings.
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  external void strokeRect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The
  /// **`CanvasRenderingContext2D.beginPath()`**
  /// method of the Canvas 2D API starts a new path by emptying the list of
  /// sub-paths. Call
  /// this method when you want to create a new path.
  ///
  /// > [!NOTE]
  /// > To create a new sub-path, i.e., one matching the current
  /// > canvas state, you can use [CanvasRenderingContext2D.moveTo].
  external void beginPath();

  /// The
  /// **`CanvasRenderingContext2D.fill()`**
  /// method of the Canvas 2D API fills the current or given path with the
  /// current
  /// [CanvasRenderingContext2D.fillStyle].
  external void fill([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.stroke()`**
  /// method of the Canvas 2D API strokes (outlines) the current or given path
  /// with the
  /// current stroke style.
  ///
  /// Strokes are aligned to the center of a path; in other words, half of the
  /// stroke is
  /// drawn on the inner side, and half on the outer side.
  ///
  /// The stroke is drawn using the
  /// [non-zero winding rule](https://en.wikipedia.org/wiki/Nonzero-rule), which
  /// means that path intersections will still get filled.
  external void stroke([Path2D path]);

  /// The
  /// **`CanvasRenderingContext2D.clip()`**
  /// method of the Canvas 2D API turns the current or given path into the
  /// current clipping
  /// region. The previous clipping region, if any, is intersected with the
  /// current or given
  /// path to create the new clipping region.
  ///
  /// In the image below, the red outline represents a clipping region shaped
  /// like a star.
  /// Only those parts of the checkerboard pattern that are within the clipping
  /// region get
  /// drawn.
  ///
  /// ![Star-shaped clipping region](canvas_clipping_path.png)
  ///
  /// > [!NOTE]
  /// > Be aware that the clipping region is only constructed from
  /// > shapes added to the path. It doesn't work with shape primitives drawn
  /// > directly to the
  /// > canvas, such as [CanvasRenderingContext2D.fillRect].
  /// > Instead, you'd have to use [CanvasRenderingContext2D.rect] to
  /// > add a rectangular shape to the path before calling `clip()`.
  ///
  /// > [!NOTE]
  /// > Clip paths cannot be reverted directly. You must save your canvas state
  /// > using [CanvasRenderingContext2D.save] before calling `clip()`, and
  /// > restore it once you have finished drawing in the clipped area using
  /// > [CanvasRenderingContext2D.restore].
  external void clip([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.isPointInPath()`**
  /// method of the Canvas 2D API reports whether or not the specified point is
  /// contained in
  /// the current path.
  external bool isPointInPath(
    JSAny pathOrX,
    num xOrY, [
    JSAny fillRuleOrY,
    CanvasFillRule fillRule,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.isPointInStroke()`**
  /// method of the Canvas 2D API reports whether or not the specified point is
  /// inside the
  /// area contained by the stroking of a path.
  external bool isPointInStroke(
    JSAny pathOrX,
    num xOrY, [
    num y,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.drawFocusIfNeeded()`**
  /// method of the Canvas 2D API draws a focus ring around the current or given
  /// path, if the
  /// specified element is focused.
  external void drawFocusIfNeeded(
    JSObject elementOrPath, [
    Element element,
  ]);

  /// The [CanvasRenderingContext2D] method
  /// **`fillText()`**, part of the Canvas 2D API, draws a text string
  /// at the specified coordinates, filling the string's characters with the
  /// current
  /// [CanvasRenderingContext2D.fillStyle]. An optional parameter
  /// allows specifying a maximum width for the rendered text, which the  will
  /// achieve by condensing the text or by using a lower font size.
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  ///
  /// The text is rendered using the font and text layout configuration as
  /// defined by the
  /// [CanvasRenderingContext2D.font],
  /// [CanvasRenderingContext2D.textAlign],
  /// [CanvasRenderingContext2D.textBaseline], and
  /// [CanvasRenderingContext2D.direction] properties.
  ///
  /// > [!NOTE]
  /// > To draw the outlines of the characters in a string, call the context's
  /// > [CanvasRenderingContext2D.strokeText] method.
  external void fillText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);

  /// The [CanvasRenderingContext2D] method
  /// **`strokeText()`**, part of the Canvas 2D API, strokes — that
  /// is, draws the outlines of — the characters of a text string at the
  /// specified
  /// coordinates. An optional parameter allows specifying a maximum width for
  /// the rendered
  /// text, which the  will achieve by condensing the text or by
  /// using a lower font size.
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  ///
  /// > [!NOTE]
  /// > Use the [CanvasRenderingContext2D.fillText] method to
  /// > fill the text characters rather than having just their outlines drawn.
  external void strokeText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);

  /// The
  /// `CanvasRenderingContext2D.measureText()`
  /// method returns a [TextMetrics] object that contains information about the
  /// measured text (such as its width, for example).
  external TextMetrics measureText(String text);

  /// The **`CanvasRenderingContext2D.drawImage()`** method of the
  /// Canvas 2D API provides different ways to draw an image onto the canvas.
  external void drawImage(
    CanvasImageSource image,
    num dxOrSx,
    num dyOrSy, [
    num dwOrSw,
    num dhOrSh,
    num dx,
    num dy,
    num dw,
    num dh,
  ]);

  /// The **`CanvasRenderingContext2D.createImageData()`** method of
  /// the Canvas 2D API creates a new, blank [ImageData] object with the
  /// specified dimensions. All of the pixels in the new object are transparent
  /// black.
  external ImageData createImageData(
    JSAny imageDataOrSw, [
    int sh,
    ImageDataSettings settings,
  ]);

  /// The [CanvasRenderingContext2D] method
  /// **`getImageData()`** of the Canvas 2D API returns an
  /// [ImageData] object representing the underlying pixel data for a specified
  /// portion of the canvas.
  ///
  /// This method is not affected by the canvas's transformation matrix. If the
  /// specified
  /// rectangle extends outside the bounds of the canvas, the pixels outside the
  /// canvas are
  /// transparent black in the returned `ImageData` object.
  ///
  /// > [!NOTE]
  /// > Image data can be painted onto a canvas using the
  /// > [CanvasRenderingContext2D.putImageData] method.
  ///
  /// You can find more information about `getImageData()` and general
  /// manipulation of canvas contents in
  /// [Pixel manipulation with canvas](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Pixel_manipulation_with_canvas).
  external ImageData getImageData(
    int sx,
    int sy,
    int sw,
    int sh, [
    ImageDataSettings settings,
  ]);

  /// The **`CanvasRenderingContext2D.putImageData()`**
  /// method of the Canvas 2D API paints data from the given [ImageData] object
  /// onto the canvas. If a dirty rectangle is provided, only the pixels from
  /// that rectangle
  /// are painted. This method is not affected by the canvas transformation
  /// matrix.
  ///
  /// > [!NOTE]
  /// > Image data can be retrieved from a canvas using the
  /// > [CanvasRenderingContext2D.getImageData] method.
  ///
  /// You can find more information about `putImageData()` and general
  /// manipulation of canvas contents in the article
  /// [Pixel manipulation with canvas](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Pixel_manipulation_with_canvas).
  external void putImageData(
    ImageData imageData,
    int dx,
    int dy, [
    int dirtyX,
    int dirtyY,
    int dirtyWidth,
    int dirtyHeight,
  ]);

  /// The **`setLineDash()`** method of the Canvas 2D API's
  /// [CanvasRenderingContext2D] interface sets the line dash pattern used when
  /// stroking lines. It uses an array of values that specify alternating
  /// lengths of lines
  /// and gaps which describe the pattern.
  ///
  /// > [!NOTE]
  /// > To return to using solid lines, set the line dash list to an
  /// > empty array.
  external void setLineDash(JSArray<JSNumber> segments);

  /// The **`getLineDash()`** method of the Canvas 2D API's
  /// [CanvasRenderingContext2D] interface gets the current line dash pattern.
  external JSArray<JSNumber> getLineDash();

  /// The
  /// **`CanvasRenderingContext2D.closePath()`**
  /// method of the Canvas 2D API attempts to add a straight line from the
  /// current point to
  /// the start of the current sub-path. If the shape has already been closed or
  /// has only one
  /// point, this function does nothing.
  ///
  /// This method doesn't draw anything to the canvas directly. You can render
  /// the path using
  /// the [CanvasRenderingContext2D.stroke] or
  /// [CanvasRenderingContext2D.fill] methods.
  external void closePath();

  /// The
  /// **`CanvasRenderingContext2D.moveTo()`**
  /// method of the Canvas 2D API begins a new sub-path at the point specified
  /// by the given
  /// `(x, y)` coordinates.
  external void moveTo(
    num x,
    num y,
  );

  /// The [CanvasRenderingContext2D] method
  /// **`lineTo()`**, part of the Canvas 2D API, adds a straight line
  /// to the current sub-path by connecting the sub-path's last point to the
  /// specified
  /// `(x, y)` coordinates.
  ///
  /// Like other methods that modify the current path, this method does not
  /// directly render
  /// anything. To draw the path onto a canvas, you can use the
  /// [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] methods.
  external void lineTo(
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.quadraticCurveTo()`**
  /// method of the Canvas 2D API adds a quadratic [Bézier
  /// curve](https://developer.mozilla.org/en-US/docs/Glossary/Bezier_curve) to
  /// the current
  /// sub-path. It requires two points: the first one is a control point and the
  /// second one is
  /// the end point. The starting point is the latest point in the current path,
  /// which can be
  /// changed using [CanvasRenderingContext2D.moveTo] before creating
  /// the quadratic Bézier curve.
  external void quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.bezierCurveTo()`**
  /// method of the Canvas 2D API adds a cubic [Bézier
  /// curve](https://developer.mozilla.org/en-US/docs/Glossary/Bezier_curve) to
  /// the current
  /// sub-path. It requires three points: the first two are control points and
  /// the third one
  /// is the end point. The starting point is the latest point in the current
  /// path, which can
  /// be changed using [CanvasRenderingContext2D.moveTo] before
  /// creating the Bézier curve.
  external void bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );

  /// The **`CanvasRenderingContext2D.arcTo()`** method of the Canvas 2D API
  /// adds a circular arc to the current sub-path, using the given control
  /// points and radius.
  /// The arc is automatically connected to the path's latest point with a
  /// straight line if necessary, for example if the starting point and control
  /// points are in a line.
  ///
  /// This method is commonly used for making rounded corners.
  ///
  /// > [!NOTE]
  /// > You may get unexpected results when using a
  /// > relatively large radius: the arc's connecting line will go in whatever
  /// > direction it
  /// > must to meet the specified radius.
  external void arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );

  /// The
  /// **`CanvasRenderingContext2D.rect()`**
  /// method of the Canvas 2D API adds a rectangle to the current path.
  ///
  /// Like other methods that modify the current path, this method does not
  /// directly render
  /// anything. To draw the rectangle onto a canvas, you can use the
  /// [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] methods.
  ///
  /// > [!NOTE]
  /// > To both create and render a rectangle in one step, use the
  /// > [CanvasRenderingContext2D.fillRect] or
  /// > [CanvasRenderingContext2D.strokeRect] methods.
  external void rect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The **`CanvasRenderingContext2D.roundRect()`** method of the Canvas 2D API
  /// adds a rounded rectangle to the current path.
  ///
  /// The radii of the corners can be specified in much the same way as the CSS
  /// [`border-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
  /// property.
  ///
  /// Like other methods that modify the current path, this method does not
  /// directly render anything.
  /// To draw the rounded rectangle onto a canvas, you can use the
  /// [CanvasRenderingContext2D.fill] or [CanvasRenderingContext2D.stroke]
  /// methods.
  external void roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny radii,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.arc()`**
  /// method of the
  /// [Canvas 2D API](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D)
  /// adds a circular arc to the current sub-path.
  external void arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.ellipse()`**
  /// method of the Canvas 2D API adds an elliptical arc to the current
  /// sub-path.
  external void ellipse(
    num x,
    num y,
    num radiusX,
    num radiusY,
    num rotation,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);

  /// The **`CanvasRenderingContext2D.canvas`** property, part of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
  /// is a read-only reference to the
  /// [HTMLCanvasElement] object that is associated with a given context. It
  /// might be
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// if there is no associated `canvas` element.
  external HTMLCanvasElement get canvas;

  /// The
  /// **`CanvasRenderingContext2D.globalAlpha`**
  /// property of the Canvas 2D API specifies the alpha (transparency) value
  /// that is applied
  /// to shapes and images before they are drawn onto the canvas.
  ///
  /// > [!NOTE]
  /// > See also the chapter
  /// > [Applying styles and color](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Applying_styles_and_colors)
  /// > in the
  /// > [Canvas Tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial).
  external double get globalAlpha;
  external set globalAlpha(num value);

  /// The
  /// **`CanvasRenderingContext2D.globalCompositeOperation`**
  /// property of the Canvas 2D API sets the type of compositing operation to
  /// apply when
  /// drawing new shapes.
  ///
  /// See also
  /// [Compositing and clipping](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Compositing)
  /// in the
  /// [Canvas Tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial).
  external String get globalCompositeOperation;
  external set globalCompositeOperation(String value);

  /// The **`imageSmoothingEnabled`** property of the
  /// [CanvasRenderingContext2D] interface, part of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
  /// determines whether scaled images
  /// are smoothed (`true`, default) or not (`false`). On getting the
  /// `imageSmoothingEnabled` property, the last value it was set to is
  /// returned.
  ///
  /// This property is useful for games and other apps that use pixel art. When
  /// enlarging
  /// images, the default resizing algorithm will blur the pixels. Set this
  /// property to
  /// `false` to retain the pixels' sharpness.
  ///
  /// > [!NOTE]
  /// > You can adjust the smoothing quality with the
  /// > [CanvasRenderingContext2D.imageSmoothingQuality]
  /// > property.
  external bool get imageSmoothingEnabled;
  external set imageSmoothingEnabled(bool value);

  /// The **`imageSmoothingQuality`** property of the
  /// [CanvasRenderingContext2D] interface, part of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
  /// lets you set the quality of
  /// image smoothing.
  ///
  /// > [!NOTE]
  /// > For this property to have an effect,
  /// > [CanvasRenderingContext2D.imageSmoothingEnabled]
  /// > must be `true`.
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set imageSmoothingQuality(ImageSmoothingQuality value);

  /// The **`CanvasRenderingContext2D.strokeStyle`** property of the
  /// Canvas 2D API specifies the color, gradient, or pattern to use for the
  /// strokes
  /// (outlines) around shapes. The default is `#000` (black).
  ///
  /// > [!NOTE]
  /// > For more examples of stroke and fill styles, see
  /// > [Applying styles and color](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Applying_styles_and_colors)
  /// > in the
  /// > [Canvas tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial).
  external JSAny get strokeStyle;
  external set strokeStyle(JSAny value);

  /// The
  /// **`CanvasRenderingContext2D.fillStyle`**
  /// property of the
  /// [Canvas 2D API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// specifies the
  /// color, gradient, or pattern to use inside shapes. The default style is
  /// `#000`
  /// (black).
  ///
  /// > [!NOTE]
  /// > For more examples of fill and stroke styles, see
  /// > [Applying styles and color](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Applying_styles_and_colors)
  /// > in the
  /// > [Canvas tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial).
  external JSAny get fillStyle;
  external set fillStyle(JSAny value);

  /// The
  /// **`CanvasRenderingContext2D.shadowOffsetX`**
  /// property of the Canvas 2D API specifies the distance that shadows will be
  /// offset
  /// horizontally.
  ///
  /// > [!NOTE]
  /// > Shadows are only drawn if the
  /// > [CanvasRenderingContext2D.shadowColor] property is set to
  /// > a non-transparent value. One of the
  /// > [CanvasRenderingContext2D.shadowBlur], `shadowOffsetX`, or
  /// > [CanvasRenderingContext2D.shadowOffsetY] properties must
  /// > be non-zero, as well.
  external double get shadowOffsetX;
  external set shadowOffsetX(num value);

  /// The
  /// **`CanvasRenderingContext2D.shadowOffsetY`**
  /// property of the Canvas 2D API specifies the distance that shadows will be
  /// offset
  /// vertically.
  ///
  /// > [!NOTE]
  /// > Shadows are only drawn if the
  /// > [CanvasRenderingContext2D.shadowColor] property is set to
  /// > a non-transparent value. One of the
  /// > [CanvasRenderingContext2D.shadowBlur],
  /// > [CanvasRenderingContext2D.shadowOffsetX], or `shadowOffsetY` properties
  /// > must be non-zero, as
  /// > well.
  external double get shadowOffsetY;
  external set shadowOffsetY(num value);

  /// The
  /// **`CanvasRenderingContext2D.shadowBlur`**
  /// property of the Canvas 2D API specifies the amount of blur applied to
  /// shadows. The
  /// default is `0` (no blur).
  ///
  /// > [!NOTE]
  /// > Shadows are only drawn if the
  /// > [CanvasRenderingContext2D.shadowColor] property is set to
  /// > a non-transparent value. One of the `shadowBlur`,
  /// > [CanvasRenderingContext2D.shadowOffsetX], or
  /// > [CanvasRenderingContext2D.shadowOffsetY] properties must
  /// > be non-zero, as well.
  external double get shadowBlur;
  external set shadowBlur(num value);

  /// The
  /// **`CanvasRenderingContext2D.shadowColor`**
  /// property of the Canvas 2D API specifies the color of shadows.
  ///
  /// Be aware that the shadow's rendered opacity will be affected by the
  /// opacity of the
  /// [CanvasRenderingContext2D.fillStyle] color when filling, and
  /// of the [CanvasRenderingContext2D.strokeStyle] color when
  /// stroking.
  ///
  /// > [!NOTE]
  /// > Shadows are only drawn if the `shadowColor`
  /// > property is set to a non-transparent value. One of the
  /// > [CanvasRenderingContext2D.shadowBlur],
  /// > [CanvasRenderingContext2D.shadowOffsetX], or
  /// > [CanvasRenderingContext2D.shadowOffsetY] properties must
  /// > be non-zero, as well.
  external String get shadowColor;
  external set shadowColor(String value);

  /// The
  /// **`CanvasRenderingContext2D.filter`**
  /// property of the Canvas 2D API provides filter effects such as blurring and
  /// grayscaling.
  /// It is similar to the CSS `filter` property and accepts the same values.
  external String get filter;
  external set filter(String value);

  /// The
  /// **`CanvasRenderingContext2D.lineWidth`**
  /// property of the Canvas 2D API sets the thickness of lines.
  ///
  /// > [!NOTE]
  /// > Lines can be drawn with the
  /// > [CanvasRenderingContext2D.stroke],
  /// > [CanvasRenderingContext2D.strokeRect],
  /// > and [CanvasRenderingContext2D.strokeText] methods.
  external double get lineWidth;
  external set lineWidth(num value);

  /// The
  /// **`CanvasRenderingContext2D.lineCap`**
  /// property of the Canvas 2D API determines the shape used to draw the end
  /// points of lines.
  ///
  /// > [!NOTE]
  /// > Lines can be drawn with the
  /// > [CanvasRenderingContext2D.stroke],
  /// > [CanvasRenderingContext2D.strokeRect],
  /// > and [CanvasRenderingContext2D.strokeText] methods.
  external CanvasLineCap get lineCap;
  external set lineCap(CanvasLineCap value);

  /// The
  /// **`CanvasRenderingContext2D.lineJoin`**
  /// property of the Canvas 2D API determines the shape used to join two line
  /// segments where
  /// they meet.
  ///
  /// This property has no effect wherever two connected segments have the same
  /// direction,
  /// because no joining area will be added in this case. Degenerate segments
  /// with a length of
  /// zero (i.e., with all endpoints and control points at the exact same
  /// position) are also
  /// ignored.
  ///
  /// > [!NOTE]
  /// > Lines can be drawn with the
  /// > [CanvasRenderingContext2D.stroke],
  /// > [CanvasRenderingContext2D.strokeRect],
  /// > and [CanvasRenderingContext2D.strokeText] methods.
  external CanvasLineJoin get lineJoin;
  external set lineJoin(CanvasLineJoin value);

  /// The **`CanvasRenderingContext2D.miterLimit`** property of the
  /// Canvas 2D API sets the miter limit ratio.
  ///
  /// > [!NOTE]
  /// > For more info about miters, see
  /// > [Applying styles and color](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Applying_styles_and_colors)
  /// > in the
  /// > [Canvas tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial).
  external double get miterLimit;
  external set miterLimit(num value);

  /// The
  /// **`CanvasRenderingContext2D.lineDashOffset`**
  /// property of the Canvas 2D API sets the line dash offset, or "phase."
  ///
  /// > [!NOTE]
  /// > Lines are drawn by calling the
  /// > [CanvasRenderingContext2D.stroke] method.
  external double get lineDashOffset;
  external set lineDashOffset(num value);

  /// The **`CanvasRenderingContext2D.font`** property of the Canvas 2D API
  /// specifies the current text style to use when drawing text.
  /// This string uses the same syntax as the
  /// [CSS font](https://developer.mozilla.org/en-US/docs/Web/CSS/font)
  /// specifier.
  external String get font;
  external set font(String value);

  /// The
  /// **`CanvasRenderingContext2D.textAlign`**
  /// property of the Canvas 2D API specifies the current text alignment used
  /// when drawing
  /// text.
  ///
  /// The alignment is relative to the `x` value of the
  /// [CanvasRenderingContext2D.fillText] method. For example, if
  /// `textAlign` is `"center"`, then the text's left edge will be at
  /// `x - (textWidth / 2)`.
  external CanvasTextAlign get textAlign;
  external set textAlign(CanvasTextAlign value);

  /// The
  /// **`CanvasRenderingContext2D.textBaseline`**
  /// property of the Canvas 2D API specifies the current text baseline used
  /// when drawing
  /// text.
  external CanvasTextBaseline get textBaseline;
  external set textBaseline(CanvasTextBaseline value);

  /// The
  /// **`CanvasRenderingContext2D.direction`**
  /// property of the Canvas 2D API specifies the current text direction used to
  /// draw text.
  external CanvasDirection get direction;
  external set direction(CanvasDirection value);

  /// The **`CanvasRenderingContext2D.letterSpacing`** property of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// specifies the spacing between letters when drawing text.
  ///
  /// This corresponds to the CSS
  /// [`letter-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)
  /// property.
  external String get letterSpacing;
  external set letterSpacing(String value);

  /// The **`CanvasRenderingContext2D.fontKerning`** property of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// specifies how font kerning information is used.
  ///
  /// Kerning adjusts how adjacent letters are spaced in a proportional font,
  /// allowing them to edge into each other's visual area if there is space
  /// available.
  /// For example, in well-kerned fonts, the characters `AV`, `Ta` and `We` nest
  /// together and make character spacing more uniform and pleasant to read than
  /// the equivalent text without kerning.
  ///
  /// The property corresponds to the
  /// [`font-kerning`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-kerning)
  /// CSS property.
  external CanvasFontKerning get fontKerning;
  external set fontKerning(CanvasFontKerning value);

  /// The **`CanvasRenderingContext2D.fontStretch`** property of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// specifies how the font may be expanded or condensed when drawing text.
  ///
  /// The property corresponds to the
  /// [`font-stretch`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-stretch)
  /// CSS property when used with keywords (percentage values are not
  /// supported).
  external CanvasFontStretch get fontStretch;
  external set fontStretch(CanvasFontStretch value);

  /// The **`CanvasRenderingContext2D.fontVariantCaps`** property of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// specifies an alternative capitalization of the rendered text.
  ///
  /// This corresponds to the CSS
  /// [`font-variant-caps`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-caps)
  /// property.
  external CanvasFontVariantCaps get fontVariantCaps;
  external set fontVariantCaps(CanvasFontVariantCaps value);

  /// The **`CanvasRenderingContext2D.textRendering`** property of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// provides information to the rendering engine about what to optimize for
  /// when rendering text.
  ///
  /// The values correspond to the SVG
  /// [`text-rendering`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-rendering)
  /// attribute (and CSS
  /// [`text-rendering`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-rendering)
  /// property).
  external CanvasTextRendering get textRendering;
  external set textRendering(CanvasTextRendering value);

  /// The **`CanvasRenderingContext2D.wordSpacing`** property of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API)
  /// specifies the spacing between words when drawing text.
  ///
  /// This corresponds to the CSS
  /// [`word-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/word-spacing)
  /// property.
  external String get wordSpacing;
  external set wordSpacing(String value);
}

/// The **`CanvasGradient`** interface represents an
/// [opaque object](https://en.wikipedia.org/wiki/Opaque_data_type) describing a
/// gradient. It is returned by the methods
/// [CanvasRenderingContext2D.createLinearGradient],
/// [CanvasRenderingContext2D.createConicGradient] or
/// [CanvasRenderingContext2D.createRadialGradient].
///
/// It can be used as a [CanvasRenderingContext2D.fillStyle] or
/// [CanvasRenderingContext2D.strokeStyle].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient).
extension type CanvasGradient._(JSObject _) implements JSObject {
  /// The **`CanvasGradient.addColorStop()`** method adds a new color stop,
  /// defined by an `offset` and a `color`, to a given canvas gradient.
  external void addColorStop(
    num offset,
    String color,
  );
}

/// The **`CanvasPattern`** interface represents an
/// [opaque object](https://en.wikipedia.org/wiki/Opaque_data_type) describing a
/// pattern, based on an image, a canvas, or a video, created by the
/// [CanvasRenderingContext2D.createPattern] method.
///
/// It can be used as a [CanvasRenderingContext2D.fillStyle] or
/// [CanvasRenderingContext2D.strokeStyle].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern).
extension type CanvasPattern._(JSObject _) implements JSObject {
  /// The **`CanvasPattern.setTransform()`** method uses a [DOMMatrix] object as
  /// the pattern's transformation matrix and invokes it on the pattern.
  external void setTransform([DOMMatrix2DInit transform]);
}

/// The **`TextMetrics`** interface represents the dimensions of a piece of text
/// in the canvas; a `TextMetrics` instance can be retrieved using the
/// [CanvasRenderingContext2D.measureText] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics).
extension type TextMetrics._(JSObject _) implements JSObject {
  /// The read-only **`width`** property of the [TextMetrics] interface contains
  /// the text's advance width (the width of that inline box) in CSS pixels.
  external double get width;

  /// The read-only `actualBoundingBoxLeft` property of the [TextMetrics]
  /// interface is a `double` giving the distance parallel to the baseline from
  /// the alignment point given by the [CanvasRenderingContext2D.textAlign]
  /// property to the left side of the bounding rectangle of the given text, in
  /// CSS pixels; positive numbers indicating a distance going left from the
  /// given alignment point.
  external double get actualBoundingBoxLeft;

  /// The read-only `actualBoundingBoxRight` property of the [TextMetrics]
  /// interface is a `double` giving the distance parallel to the baseline from
  /// the alignment point given by the [CanvasRenderingContext2D.textAlign]
  /// property to the right side of the bounding rectangle of the given text, in
  /// CSS pixels.
  external double get actualBoundingBoxRight;

  /// The read-only `fontBoundingBoxAscent` property of the [TextMetrics]
  /// interface returns the distance from the horizontal line indicated by the
  /// [CanvasRenderingContext2D.textBaseline] attribute, to the top of the
  /// highest bounding rectangle of all the fonts used to render the text, in
  /// CSS pixels.
  external double get fontBoundingBoxAscent;

  /// The read-only `fontBoundingBoxDescent` property of the [TextMetrics]
  /// interface returns the distance from the horizontal line indicated by the
  /// [CanvasRenderingContext2D.textBaseline] attribute to the bottom of the
  /// bounding rectangle of all the fonts used to render the text, in CSS
  /// pixels.
  external double get fontBoundingBoxDescent;

  /// The read-only **`actualBoundingBoxAscent`** property of the [TextMetrics]
  /// interface is a `double` giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] attribute to the
  /// top of the bounding rectangle used to render the text, in CSS pixels.
  external double get actualBoundingBoxAscent;

  /// The read-only `actualBoundingBoxDescent` property of the [TextMetrics]
  /// interface is a `double` giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] attribute to the
  /// bottom of the bounding rectangle used to render the text, in CSS pixels.
  external double get actualBoundingBoxDescent;

  /// The read-only `emHeightAscent` property of the [TextMetrics] interface
  /// returns the distance from the horizontal line indicated by the
  /// [CanvasRenderingContext2D.textBaseline] property to the top of the _em_
  /// square in the line box, in CSS pixels.
  external double get emHeightAscent;

  /// The read-only `emHeightDescent` property of the [TextMetrics] interface
  /// returns the distance from the horizontal line indicated by the
  /// [CanvasRenderingContext2D.textBaseline] property to the bottom of the _em_
  /// square in the line box, in CSS pixels.
  external double get emHeightDescent;

  /// The read-only `hangingBaseline` property of the [TextMetrics] interface is
  /// a `double` giving the distance from the horizontal line indicated by the
  /// [CanvasRenderingContext2D.textBaseline] property to the hanging baseline
  /// of the line box, in CSS pixels.
  external double get hangingBaseline;

  /// The read-only `alphabeticBaseline` property of the [TextMetrics] interface
  /// is a `double` giving the distance from the horizontal line indicated by
  /// the [CanvasRenderingContext2D.textBaseline] property to the alphabetic
  /// baseline of the line box, in CSS pixels.
  external double get alphabeticBaseline;

  /// The read-only `ideographicBaseline` property of the [TextMetrics]
  /// interface is a `double` giving the distance from the horizontal line
  /// indicated by the [CanvasRenderingContext2D.textBaseline] property to the
  /// ideographic baseline of the line box, in CSS pixels.
  external double get ideographicBaseline;
}
extension type ImageDataSettings._(JSObject _) implements JSObject {
  external factory ImageDataSettings({PredefinedColorSpace colorSpace});

  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
}

/// The **`ImageData`** interface represents the underlying pixel data of an
/// area of a `canvas` element.
///
/// It is created using the [ImageData.ImageData] constructor or creator methods
/// on the [CanvasRenderingContext2D] object associated with a canvas:
/// [CanvasRenderingContext2D.createImageData] and
/// [CanvasRenderingContext2D.getImageData]. It can also be used to set a part
/// of the canvas by using [CanvasRenderingContext2D.putImageData].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageData).
extension type ImageData._(JSObject _) implements JSObject {
  external factory ImageData(
    JSAny dataOrSw,
    int shOrSw, [
    JSAny settingsOrSh,
    ImageDataSettings settings,
  ]);

  /// The readonly **`ImageData.width`** property returns the number
  /// of pixels per row in the [ImageData] object.
  external int get width;

  /// The readonly **`ImageData.height`** property returns the number
  /// of rows in the [ImageData] object.
  external int get height;

  /// The readonly **`ImageData.data`** property returns a
  /// `Uint8ClampedArray` that contains the [ImageData] object's
  /// pixel data. Data is stored as a one-dimensional array in the RGBA order,
  /// with integer
  /// values between `0` and `255` (inclusive).
  external JSUint8ClampedArray get data;

  /// The read-only **`ImageData.colorSpace`** property is a string indicating
  /// the color space of the image data.
  ///
  /// The color space can be set during `ImageData` initialization using either
  /// the
  /// [`ImageData()`](https://developer.mozilla.org/en-US/docs/Web/API/ImageData/ImageData)
  /// constructor or the
  /// [`createImageData()`](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/createImageData)
  /// method.
  external PredefinedColorSpace get colorSpace;
}

/// The **`Path2D`** interface of the Canvas 2D API is used to declare a path
/// that can then be used on a [CanvasRenderingContext2D] object. The
/// [path methods](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#paths)
/// of the `CanvasRenderingContext2D` interface are also present on this
/// interface, which gives you the convenience of being able to retain and
/// replay your path whenever desired.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Path2D).
extension type Path2D._(JSObject _) implements JSObject {
  external factory Path2D([JSAny path]);

  /// The **`Path2D.addPath()`** method
  /// of the Canvas 2D API adds one [Path2D] object to another
  /// `Path2D` object.
  external void addPath(
    Path2D path, [
    DOMMatrix2DInit transform,
  ]);
  external void closePath();
  external void moveTo(
    num x,
    num y,
  );
  external void lineTo(
    num x,
    num y,
  );
  external void quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );
  external void bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );
  external void arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );
  external void rect(
    num x,
    num y,
    num w,
    num h,
  );
  external void roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny radii,
  ]);
  external void arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external void ellipse(
    num x,
    num y,
    num radiusX,
    num radiusY,
    num rotation,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
}

/// The **`ImageBitmapRenderingContext`** interface is a canvas rendering
/// context that provides the functionality to replace the canvas's contents
/// with the given [ImageBitmap]. Its context id (the first argument to
/// [HTMLCanvasElement.getContext] or [OffscreenCanvas.getContext]) is
/// `"bitmaprenderer"`.
///
/// This interface is available in both the window and the
/// [worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// context.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmapRenderingContext).
extension type ImageBitmapRenderingContext._(JSObject _) implements JSObject {
  /// The **`ImageBitmapRenderingContext.transferFromImageBitmap()`**
  /// method displays the given [ImageBitmap] in the canvas associated with this
  /// rendering context. The ownership of the `ImageBitmap` is transferred to
  /// the
  /// canvas as well.
  ///
  /// This method was previously named `transferImageBitmap()`, but was renamed
  /// in
  /// a spec change. The old name is being kept as an alias to avoid code
  /// breakage.
  external void transferFromImageBitmap(ImageBitmap? bitmap);

  /// The **`ImageBitmapRenderingContext.canvas`** property, part of the
  /// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
  /// is a read-only reference to the
  /// [HTMLCanvasElement] or [OffscreenCanvas] object that is associated with
  /// the given context.
  external JSObject get canvas;
}
extension type ImageEncodeOptions._(JSObject _) implements JSObject {
  external factory ImageEncodeOptions({
    String type,
    num quality,
  });

  external String get type;
  external set type(String value);
  external double get quality;
  external set quality(num value);
}

/// When using the `canvas` element or the
/// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
/// rendering, animation, and user interaction usually happen on the main
/// execution thread of a web application.
/// The computation relating to canvas animations and rendering can have a
/// significant impact on application performance.
///
/// The **`OffscreenCanvas`** interface provides a canvas that can be rendered
/// off screen, decoupling the DOM and the Canvas API so that the `canvas`
/// element is no longer entirely dependent on the DOM.
/// Rendering operations can also be run inside a
/// [worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// context, allowing you to run some tasks in a separate thread and avoid heavy
/// work on the main thread.
///
/// `OffscreenCanvas` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas).
extension type OffscreenCanvas._(JSObject _) implements EventTarget, JSObject {
  external factory OffscreenCanvas(
    int width,
    int height,
  );

  /// The **`OffscreenCanvas.getContext()`** method returns a drawing context
  /// for an offscreen canvas, or
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// if the context identifier is not supported, or the offscreen canvas has
  /// already been set to a different context mode.
  external OffscreenRenderingContext? getContext(
    OffscreenRenderingContextId contextId, [
    JSAny? options,
  ]);

  /// The **`OffscreenCanvas.transferToImageBitmap()`** method creates an
  /// [ImageBitmap] object from the most recently rendered image of the
  /// `OffscreenCanvas`. The `OffscreenCanvas` allocates a new image for its
  /// subsequent rendering.
  external ImageBitmap transferToImageBitmap();

  /// The **`OffscreenCanvas.convertToBlob()`** method creates a [Blob] object
  /// representing the image contained in the canvas.
  ///
  /// The desired file format and image quality may be specified.
  /// If the file format is not specified, or if the given format is not
  /// supported, then the data will be exported as `image/png`.
  /// Browsers are required to support `image/png`; many will support additional
  /// formats including `image/jpeg` and `image/webp`.
  ///
  /// The created image will have a resolution of 96dpi for file formats that
  /// support encoding resolution metadata.
  external JSPromise<Blob> convertToBlob([ImageEncodeOptions options]);

  /// The **`width`** property returns and sets the width of an
  /// [OffscreenCanvas] object.
  external int get width;
  external set width(int value);

  /// The **`height`** property returns and sets the height of an
  /// [OffscreenCanvas] object.
  external int get height;
  external set height(int value);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
}

/// The **`OffscreenCanvasRenderingContext2D`** interface is a
/// [CanvasRenderingContext2D] rendering context for drawing to the bitmap of an
/// `OffscreenCanvas` object.
/// It is similar to the `CanvasRenderingContext2D` object, with the following
/// differences:
///
/// - there is no support for user-interface features (`drawFocusIfNeeded`)
/// - its `canvas` attribute refers to an `OffscreenCanvas` object rather than a
///   `canvas` element
/// - the bitmap for the placeholder `canvas` element belonging to the
///   `OffscreenCanvas` object is updated during the rendering update of the
///   `Window` or `Worker` that owns the `OffscreenCanvas`
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D).
extension type OffscreenCanvasRenderingContext2D._(JSObject _)
    implements JSObject {
  external void save();
  external void restore();
  external void reset();
  external bool isContextLost();
  external void scale(
    num x,
    num y,
  );
  external void rotate(num angle);
  external void translate(
    num x,
    num y,
  );
  external void transform(
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
  );
  external DOMMatrix getTransform();
  external void setTransform([
    JSAny aOrTransform,
    num b,
    num c,
    num d,
    num e,
    num f,
  ]);
  external void resetTransform();
  external CanvasGradient createLinearGradient(
    num x0,
    num y0,
    num x1,
    num y1,
  );
  external CanvasGradient createRadialGradient(
    num x0,
    num y0,
    num r0,
    num x1,
    num y1,
    num r1,
  );
  external CanvasGradient createConicGradient(
    num startAngle,
    num x,
    num y,
  );
  external CanvasPattern? createPattern(
    CanvasImageSource image,
    String repetition,
  );
  external void clearRect(
    num x,
    num y,
    num w,
    num h,
  );
  external void fillRect(
    num x,
    num y,
    num w,
    num h,
  );
  external void strokeRect(
    num x,
    num y,
    num w,
    num h,
  );
  external void beginPath();
  external void fill([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external void stroke([Path2D path]);
  external void clip([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external bool isPointInPath(
    JSAny pathOrX,
    num xOrY, [
    JSAny fillRuleOrY,
    CanvasFillRule fillRule,
  ]);
  external bool isPointInStroke(
    JSAny pathOrX,
    num xOrY, [
    num y,
  ]);
  external void fillText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);
  external void strokeText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);
  external TextMetrics measureText(String text);
  external void drawImage(
    CanvasImageSource image,
    num dxOrSx,
    num dyOrSy, [
    num dwOrSw,
    num dhOrSh,
    num dx,
    num dy,
    num dw,
    num dh,
  ]);
  external ImageData createImageData(
    JSAny imageDataOrSw, [
    int sh,
    ImageDataSettings settings,
  ]);
  external ImageData getImageData(
    int sx,
    int sy,
    int sw,
    int sh, [
    ImageDataSettings settings,
  ]);
  external void putImageData(
    ImageData imageData,
    int dx,
    int dy, [
    int dirtyX,
    int dirtyY,
    int dirtyWidth,
    int dirtyHeight,
  ]);
  external void setLineDash(JSArray<JSNumber> segments);
  external JSArray<JSNumber> getLineDash();
  external void closePath();
  external void moveTo(
    num x,
    num y,
  );
  external void lineTo(
    num x,
    num y,
  );
  external void quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );
  external void bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );
  external void arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );
  external void rect(
    num x,
    num y,
    num w,
    num h,
  );
  external void roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny radii,
  ]);
  external void arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external void ellipse(
    num x,
    num y,
    num radiusX,
    num radiusY,
    num rotation,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external OffscreenCanvas get canvas;
  external double get globalAlpha;
  external set globalAlpha(num value);
  external String get globalCompositeOperation;
  external set globalCompositeOperation(String value);
  external bool get imageSmoothingEnabled;
  external set imageSmoothingEnabled(bool value);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external JSAny get strokeStyle;
  external set strokeStyle(JSAny value);
  external JSAny get fillStyle;
  external set fillStyle(JSAny value);
  external double get shadowOffsetX;
  external set shadowOffsetX(num value);
  external double get shadowOffsetY;
  external set shadowOffsetY(num value);
  external double get shadowBlur;
  external set shadowBlur(num value);
  external String get shadowColor;
  external set shadowColor(String value);
  external String get filter;
  external set filter(String value);
  external double get lineWidth;
  external set lineWidth(num value);
  external CanvasLineCap get lineCap;
  external set lineCap(CanvasLineCap value);
  external CanvasLineJoin get lineJoin;
  external set lineJoin(CanvasLineJoin value);
  external double get miterLimit;
  external set miterLimit(num value);
  external double get lineDashOffset;
  external set lineDashOffset(num value);
  external String get font;
  external set font(String value);
  external CanvasTextAlign get textAlign;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextBaseline get textBaseline;
  external set textBaseline(CanvasTextBaseline value);
  external CanvasDirection get direction;
  external set direction(CanvasDirection value);
  external String get letterSpacing;
  external set letterSpacing(String value);
  external CanvasFontKerning get fontKerning;
  external set fontKerning(CanvasFontKerning value);
  external CanvasFontStretch get fontStretch;
  external set fontStretch(CanvasFontStretch value);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set fontVariantCaps(CanvasFontVariantCaps value);
  external CanvasTextRendering get textRendering;
  external set textRendering(CanvasTextRendering value);
  external String get wordSpacing;
  external set wordSpacing(String value);
}

/// The **`CustomElementRegistry`** interface provides methods for registering
/// custom elements and querying registered elements. To get an instance of it,
/// use the [window.customElements] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry).
extension type CustomElementRegistry._(JSObject _) implements JSObject {
  /// The **`define()`** method of the [CustomElementRegistry] interface adds a
  /// definition for a custom element to the custom element registry, mapping
  /// its name to the constructor which will be used to create it.
  external void define(
    String name,
    CustomElementConstructor constructor, [
    ElementDefinitionOptions options,
  ]);

  /// The **`get()`** method of the
  /// [CustomElementRegistry] interface returns the constructor for a
  /// previously-defined custom element.
  external CustomElementConstructor? get(String name);

  /// The **`getName()`** method of the
  /// [CustomElementRegistry] interface returns the name for a
  /// previously-defined custom element.
  external String? getName(CustomElementConstructor constructor);

  /// The **`whenDefined()`** method of the
  /// [CustomElementRegistry] interface returns a `Promise` that
  /// resolves when the named element is defined.
  external JSPromise<CustomElementConstructor> whenDefined(String name);

  /// The **`upgrade()`** method of the
  /// [CustomElementRegistry] interface upgrades all shadow-containing custom
  /// elements in a [Node] subtree, even before they are connected to the main
  /// document.
  external void upgrade(Node root);
}
extension type ElementDefinitionOptions._(JSObject _) implements JSObject {
  external factory ElementDefinitionOptions({String extends_});

  @JS('extends')
  external String get extends_;
  @JS('extends')
  external set extends_(String value);
}

/// The **`ElementInternals`** interface of the
/// [Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
/// gives web developers a way to allow custom elements to fully participate in
/// HTML forms. It provides utilities for working with these elements in the
/// same way you would work with any standard HTML form element, and also
/// exposes the
/// [Accessibility Object Model](https://wicg.github.io/aom/explainer.html) to
/// the element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals).
extension type ElementInternals._(JSObject _) implements JSObject {
  /// The **`setFormValue()`** method of the [ElementInternals] interface sets
  /// the element's submission value and state, communicating these to the user
  /// agent.
  external void setFormValue(
    JSAny? value, [
    JSAny? state,
  ]);

  /// The **`setValidity()`** method of the [ElementInternals] interface sets
  /// the validity of the element.
  external void setValidity([
    ValidityStateFlags flags,
    String message,
    HTMLElement anchor,
  ]);

  /// The **`checkValidity()`** method of the [ElementInternals] interface
  /// checks if the element meets any
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  /// rules applied to it.
  ///
  /// If `checkValidity` returns `false` then a cancelable
  /// [invalid event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/invalid_event)
  /// is fired on the element.
  external bool checkValidity();

  /// The **`reportValidity()`** method of the [ElementInternals] interface
  /// checks if the element meets any
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  /// rules applied to it.
  ///
  /// If `reportValidity` returns `false` then a cancelable
  /// [invalid event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/invalid_event)
  /// is fired on the element.
  ///
  /// This method behaves in a similar way to [ElementInternals.checkValidity],
  /// however it additionally sends the value of
  /// [ElementInternals.validationMessage] to the user agent for display.
  external bool reportValidity();

  /// The **`shadowRoot`** read-only property of the [ElementInternals]
  /// interface returns the [ShadowRoot] for this element.
  external ShadowRoot? get shadowRoot;

  /// The **`form`** read-only property of the [ElementInternals] interface
  /// returns the [HTMLFormElement] associated with this element.
  external HTMLFormElement? get form;

  /// The **`willValidate`** read-only property of the [ElementInternals]
  /// interface returns `true` if the element is a submittable element that is a
  /// candidate for
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation).
  ///
  /// Elements that are barred from being candidates for constraint validation
  /// include those that have the attributes: `disabled`, `hidden` or
  /// `readonly`, input elements of `type=button` or `type=reset`, or any
  /// element that is a `datalist` element or has a `<datalist>` element
  /// ancestor.
  external bool get willValidate;

  /// The **`validity`** read-only property of the [ElementInternals] interface
  /// returns a [ValidityState] object which represents the different validity
  /// states the element can be in, with respect to constraint validation.
  external ValidityState get validity;

  /// The **`validationMessage`** read-only property of the [ElementInternals]
  /// interface returns the validation message for the element.
  external String get validationMessage;

  /// The **`labels`** read-only property of the [ElementInternals] interface
  /// returns the labels associated with the element.
  external NodeList get labels;

  /// The **`states`** read-only property of the [ElementInternals] interface
  /// returns a [CustomStateSet] representing the possible states of the custom
  /// element.
  external CustomStateSet get states;

  /// The **`role`** read-only property of the [ElementInternals] interface
  /// returns the
  /// [WAI-ARIA role](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Roles)
  /// for the element. For example, a checkbox might have
  /// [`role="checkbox"`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Roles/checkbox_role).
  /// It reflects the `role` attribute; it does not return the element's
  /// implicit ARIA role, if any, unless explicitly set.
  external String? get role;
  external set role(String? value);

  /// The **`ariaAtomic`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-atomic`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-atomic)
  /// attribute, which indicates whether assistive technologies will present
  /// all, or only parts of, the changed region based on the change
  /// notifications defined by the `aria-relevant` attribute.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaAtomic;
  external set ariaAtomic(String? value);

  /// The **`ariaAutoComplete`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-autocomplete`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-autocomplete)
  /// attribute, which indicates whether inputting text could trigger display of
  /// one or more predictions of the user's intended value for a combobox,
  /// searchbox, or textbox and specifies how predictions would be presented if
  /// they were made.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaAutoComplete;
  external set ariaAutoComplete(String? value);
  external String? get ariaBrailleLabel;
  external set ariaBrailleLabel(String? value);
  external String? get ariaBrailleRoleDescription;
  external set ariaBrailleRoleDescription(String? value);

  /// The **`ariaBusy`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-busy`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-busy)
  /// attribute, which indicates whether an element is being modified, as
  /// assistive technologies may want to wait until the modifications are
  /// complete before exposing them to the user.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaBusy;
  external set ariaBusy(String? value);

  /// The **`ariaChecked`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-checked`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-checked)
  /// attribute, which indicates the current "checked" state of checkboxes,
  /// radio buttons, and other widgets that have a checked state.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaChecked;
  external set ariaChecked(String? value);

  /// The **`ariaColCount`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-colcount`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-colcount)
  /// attribute, which defines the number of columns in a table, grid, or
  /// treegrid.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaColCount;
  external set ariaColCount(String? value);

  /// The **`ariaColIndex`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-colindex`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-colindex)
  /// attribute, which defines an element's column index or position with
  /// respect to the total number of columns within a table, grid, or treegrid.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaColIndex;
  external set ariaColIndex(String? value);

  /// The **`ariaColIndexText`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-colindextext`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-colindextext)
  /// attribute, which defines a human readable text alternative of
  /// aria-colindex.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaColIndexText;
  external set ariaColIndexText(String? value);

  /// The **`ariaColSpan`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-colspan`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-colspan)
  /// attribute, which defines the number of columns spanned by a cell or
  /// gridcell within a table, grid, or treegrid.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaColSpan;
  external set ariaColSpan(String? value);

  /// The **`ariaCurrent`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-current`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-current)
  /// attribute, which indicates the element that represents the current item
  /// within a container or set of related elements.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaCurrent;
  external set ariaCurrent(String? value);

  /// The **`ariaDescription`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-description`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-description)
  /// attribute, which defines a string value that describes or annotates the
  /// current element.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaDescription;
  external set ariaDescription(String? value);

  /// The **`ariaDisabled`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-disabled`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-disabled)
  /// attribute, which indicates that the element is perceivable but disabled,
  /// so it is not editable or otherwise operable.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaDisabled;
  external set ariaDisabled(String? value);

  /// The **`ariaExpanded`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-expanded`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-expanded)
  /// attribute, which indicates whether a grouping element owned or controlled
  /// by this element is expanded or collapsed.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaExpanded;
  external set ariaExpanded(String? value);

  /// The **`ariaHasPopup`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-haspopup`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-haspopup)
  /// attribute, which indicates the availability and type of interactive popup
  /// element, such as menu or dialog, that can be triggered by an element.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaHasPopup;
  external set ariaHasPopup(String? value);

  /// The **`ariaHidden`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-hidden`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-hidden)
  /// attribute, which indicates whether the element is exposed to an
  /// accessibility API.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaHidden;
  external set ariaHidden(String? value);
  external String? get ariaInvalid;
  external set ariaInvalid(String? value);

  /// The **`ariaKeyShortcuts`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-keyshortcuts`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-keyshortcuts)
  /// attribute, which indicates keyboard shortcuts that an author has
  /// implemented to activate or give focus to an element.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaKeyShortcuts;
  external set ariaKeyShortcuts(String? value);

  /// The **`ariaLabel`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-label`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-label)
  /// attribute, which defines a string value that labels the current Element.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaLabel;
  external set ariaLabel(String? value);

  /// The **`ariaLevel`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-level`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-level)
  /// attribute, which defines the hierarchical level of an element within a
  /// structure.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaLevel;
  external set ariaLevel(String? value);

  /// The **`ariaLive`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-live`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Live_Regions)
  /// attribute, which indicates that an element will be updated, and describes
  /// the types of updates the user agents, assistive technologies, and user can
  /// expect from the live region.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaLive;
  external set ariaLive(String? value);

  /// The **`ariaModal`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-modal`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-modal)
  /// attribute, which indicates whether an element is modal when displayed.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaModal;
  external set ariaModal(String? value);

  /// The **`ariaMultiLine`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-multiline`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-multiline)
  /// attribute, which indicates whether a text box accepts multiple lines of
  /// input or only a single line.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaMultiLine;
  external set ariaMultiLine(String? value);

  /// The **`ariaMultiSelectable`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-multiselectable`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-multiselectable)
  /// attribute, which indicates that the user may select more than one item
  /// from the current selectable descendants.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaMultiSelectable;
  external set ariaMultiSelectable(String? value);

  /// The **`ariaOrientation`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-orientation`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-orientation)
  /// attribute, which indicates whether the element's orientation is
  /// horizontal, vertical, or unknown/ambiguous.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaOrientation;
  external set ariaOrientation(String? value);

  /// The **`ariaPlaceholder`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-placeholder`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-placeholder)
  /// attribute, which defines a short hint intended to aid the user with data
  /// entry when the control has no value.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaPlaceholder;
  external set ariaPlaceholder(String? value);

  /// The **`ariaPosInSet`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-posinset`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-posinset)
  /// attribute, which defines an element's number or position in the current
  /// set of listitems or treeitems.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaPosInSet;
  external set ariaPosInSet(String? value);

  /// The **`ariaPressed`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-pressed`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-pressed)
  /// attribute, which indicates the current "pressed" state of toggle buttons.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaPressed;
  external set ariaPressed(String? value);

  /// The **`ariaReadOnly`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-readonly`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-readonly)
  /// attribute, which indicates that the element is not editable, but is
  /// otherwise operable.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaReadOnly;
  external set ariaReadOnly(String? value);

  /// The **`ariaRequired`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-required`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-required)
  /// attribute, which indicates that user input is required on the element
  /// before a form may be submitted.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaRequired;
  external set ariaRequired(String? value);

  /// The **`ariaRoleDescription`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-roledescription`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-roledescription)
  /// attribute, which defines a human-readable, author-localized description
  /// for the role of an element.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaRoleDescription;
  external set ariaRoleDescription(String? value);

  /// The **`ariaRowCount`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-rowcount`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-rowcount)
  /// attribute, which defines the total number of rows in a table, grid, or
  /// treegrid.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaRowCount;
  external set ariaRowCount(String? value);

  /// The **`ariaRowIndex`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-rowindex`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-rowindex)
  /// attribute, which defines an element's row index or position with respect
  /// to the total number of rows within a table, grid, or treegrid.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaRowIndex;
  external set ariaRowIndex(String? value);

  /// The **`ariaRowIndexText`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-rowindextext`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-rowindextext)
  /// attribute, which defines a human readable text alternative of
  /// aria-rowindex.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaRowIndexText;
  external set ariaRowIndexText(String? value);

  /// The **`ariaRowSpan`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-rowspan`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-rowspan)
  /// attribute, which defines the number of rows spanned by a cell or gridcell
  /// within a table, grid, or treegrid.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaRowSpan;
  external set ariaRowSpan(String? value);

  /// The **`ariaSelected`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-selected`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-selected)
  /// attribute, which indicates the current "selected" state of elements that
  /// have a selected state.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaSelected;
  external set ariaSelected(String? value);

  /// The **`ariaSetSize`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-setsize`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-setsize)
  /// attribute, which defines the number of items in the current set of
  /// listitems or treeitems.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaSetSize;
  external set ariaSetSize(String? value);

  /// The **`ariaSort`** property of the [ElementInternals] interface reflects
  /// the value of the
  /// [`aria-sort`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-sort)
  /// attribute, which indicates if items in a table or grid are sorted in
  /// ascending or descending order.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaSort;
  external set ariaSort(String? value);

  /// The **`ariaValueMax`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-valuemax`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-valuemax)
  /// attribute, which defines the maximum allowed value for a range widget.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaValueMax;
  external set ariaValueMax(String? value);

  /// The **`ariaValueMin`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-valuemin`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-valuemin)
  /// attribute, which defines the minimum allowed value for a range widget.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaValueMin;
  external set ariaValueMin(String? value);

  /// The **`ariaValueNow`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-valuenow`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-valuenow)
  /// attribute, which defines the current value for a range widget.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaValueNow;
  external set ariaValueNow(String? value);

  /// The **`ariaValueText`** property of the [ElementInternals] interface
  /// reflects the value of the
  /// [`aria-valuetext`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Attributes/aria-valuetext)
  /// attribute, which defines the human-readable text alternative of
  /// aria-valuenow for a range widget.
  ///
  /// > [!NOTE]
  /// > Setting aria attributes on `ElementInternals` allows default semantics
  /// > to be defined on a custom element. These may be overwritten by
  /// > author-defined attributes, but ensure that default semantics are
  /// > retained should the author delete those attributes, or fail to add them
  /// > at all. For more information see the
  /// > [Accessibility Object Model explainer](https://wicg.github.io/aom/explainer.html#default-semantics-for-custom-elements-via-the-elementinternals-object).
  external String? get ariaValueText;
  external set ariaValueText(String? value);
}
extension type ValidityStateFlags._(JSObject _) implements JSObject {
  external factory ValidityStateFlags({
    bool valueMissing,
    bool typeMismatch,
    bool patternMismatch,
    bool tooLong,
    bool tooShort,
    bool rangeUnderflow,
    bool rangeOverflow,
    bool stepMismatch,
    bool badInput,
    bool customError,
  });

  external bool get valueMissing;
  external set valueMissing(bool value);
  external bool get typeMismatch;
  external set typeMismatch(bool value);
  external bool get patternMismatch;
  external set patternMismatch(bool value);
  external bool get tooLong;
  external set tooLong(bool value);
  external bool get tooShort;
  external set tooShort(bool value);
  external bool get rangeUnderflow;
  external set rangeUnderflow(bool value);
  external bool get rangeOverflow;
  external set rangeOverflow(bool value);
  external bool get stepMismatch;
  external set stepMismatch(bool value);
  external bool get badInput;
  external set badInput(bool value);
  external bool get customError;
  external set customError(bool value);
}

/// The **`CustomStateSet`** interface of the
/// [Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
/// stores a list of states for an
/// [autonomous custom element](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements#types_of_custom_element),
/// and allows states to be added and removed from the set.
///
/// The interface can be used to expose the internal states of a custom element,
/// allowing them to be used in CSS selectors by code that uses the element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CustomStateSet).
extension type CustomStateSet._(JSObject _) implements JSObject {}

/// The **`UserActivation`** interface provides information about whether a user
/// is currently interacting with the page, or has completed an interaction
/// since page load.
///
/// This API is only available in the window context and not exposed to workers.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/UserActivation).
extension type UserActivation._(JSObject _) implements JSObject {
  /// The read-only **`hasBeenActive`** property of the [UserActivation]
  /// interface indicates whether the current window has .
  external bool get hasBeenActive;

  /// The read-only **`isActive`** property of the [UserActivation] interface
  /// indicates whether the current window has .
  external bool get isActive;
}
extension type FocusOptions._(JSObject _) implements JSObject {
  external factory FocusOptions({
    bool preventScroll,
    bool focusVisible,
  });

  external bool get preventScroll;
  external set preventScroll(bool value);
  external bool get focusVisible;
  external set focusVisible(bool value);
}
@JS()
external Window get window;

/// The **`Window`** interface represents a window containing a  document; the
/// `document` property points to the
/// [DOM document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
/// loaded in that window.
///
/// A window for a given document can be obtained using the
/// [document.defaultView] property.
///
/// A global variable, `window`, representing the window in which the script is
/// running, is exposed to JavaScript code.
///
/// The `Window` interface is home to a variety of functions, namespaces,
/// objects, and constructors which are not necessarily directly associated with
/// the concept of a user interface window. However, the `Window` interface is a
/// suitable place to include these items that need to be globally available.
/// Many of these are documented in the
/// [JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)
/// and the
/// [DOM Reference](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model).
///
/// In a tabbed browser, each tab is represented by its own `Window` object; the
/// global `window` seen by JavaScript code running within a given tab always
/// represents the tab in which the code is running. That said, even in a tabbed
/// browser, some properties and methods still apply to the overall window that
/// contains the tab, such as [Window.resizeTo] and [Window.innerHeight].
/// Generally, anything that can't reasonably pertain to a tab pertains to the
/// window instead.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Window).
extension type Window._(JSObject _) implements EventTarget, JSObject {
  /// The **`Window.close()`** method closes the current window, or
  /// the window on which it was called.
  ///
  /// This method can only be called on windows that were opened by a script
  /// using the
  /// [Window.open] method, or on top-level windows that have a single history
  /// entry. If the window doesn't match these requirements, an error
  /// similar to this one appears in the console:
  /// `Scripts may not close windows that were not opened by script.`
  ///
  /// Note also that `close()` has no effect when called on [Window]
  /// objects returned by
  /// [`HTMLIFrameElement.contentWindow`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/contentWindow).
  external void close();

  /// The **`window.stop()`** stops further resource loading in the current
  /// browsing context, equivalent to the stop button in the browser.
  ///
  /// Because of how scripts are executed, this method cannot interrupt its
  /// parent
  /// document's loading, but it will stop its images, new windows, and other
  /// still-loading
  /// objects.
  external void stop();

  /// Makes a request to bring the window to the front. It may fail due to user
  /// settings and the window isn't guaranteed to be frontmost before this
  /// method returns.
  external void focus();

  /// The **`Window.blur()`** method does nothing.
  ///
  /// > [!NOTE]
  /// > Historically, this method was the programmatic equivalent of the user
  /// > shifting focus away
  /// > from the current window. This behavior was removed due to hostile sites
  /// > abusing this functionality.
  /// > In Firefox, you can enable the old behavior with the
  /// > `dom.disable_window_flip` preference.
  external void blur();

  /// The **`open()`** method of the
  /// [`Window`](https://developer.mozilla.org/en-US/docs/Web/API/Window)
  /// interface loads a specified resource into a new or existing browsing
  /// context (that is, a tab, a window, or an
  /// [iframe](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe))
  /// under a specified name.
  external Window? open([
    String url,
    String target,
    String features,
  ]);
  external JSObject operator [](String name);

  /// `window.alert()` instructs the browser to display a dialog with an
  /// optional message, and to wait until the user dismisses the dialog.
  ///
  /// Under some conditions — for example, when the user switches tabs — the
  /// browser may not actually display a dialog, or may not wait for the user to
  /// dismiss the dialog.
  external void alert([String message]);

  /// `window.confirm()` instructs the browser to display a dialog with an
  /// optional message, and to wait until the user either confirms or cancels
  /// the dialog.
  ///
  /// Under some conditions — for example, when the user switches tabs — the
  /// browser may not actually display a dialog, or may not wait for the user to
  /// confirm or cancel the dialog.
  external bool confirm([String message]);

  /// `window.prompt()` instructs the browser to display a dialog with an
  /// optional message prompting the user to input some text, and to wait until
  /// the user either submits the text or cancels the dialog.
  ///
  /// Under some conditions (when the user switches tabs, for example) the
  /// browser may not display a dialog, or may not wait for the user to submit
  /// text or to cancel the dialog.
  external String? prompt([
    String message,
    String default_,
  ]);

  /// Opens the print dialog to print the current document.
  ///
  /// If the document is still loading when this function is called, then the
  /// document will finish loading before opening the print dialog.
  ///
  /// This method will block while the print dialog is open.
  external void print();

  /// The **`window.postMessage()`** method safely enables cross-origin
  /// communication between [Window] objects; _e.g.,_ between a page and a
  /// pop-up that it spawned, or between a page and an iframe embedded within
  /// it.
  ///
  /// Normally, scripts on different pages are allowed to access each other if
  /// and only if the pages they originate from share the same
  /// [origin](https://developer.mozilla.org/en-US/docs/Web/API/Location/origin)
  /// (also known as the
  /// "[same-origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)").
  /// `window.postMessage()` provides a controlled mechanism to securely
  /// circumvent this restriction (if used properly).
  ///
  /// Furthermore, an accessing script must have obtained the window object of
  /// the accessed document beforehand. This can occur through methods such as
  /// [`window.open()`](https://developer.mozilla.org/en-US/docs/Web/API/Window/open)
  /// for popups or
  /// [`iframe.contentWindow`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/contentWindow)
  /// for iframes.
  ///
  /// Broadly, one window may obtain a reference to another (_e.g.,_ via
  /// `targetWindow = window.opener`), and then dispatch a [MessageEvent] on it
  /// with `targetWindow.postMessage()`. The receiving window is then free to
  /// [handle this event](https://developer.mozilla.org/en-US/docs/Web/Events/Event_handlers)
  /// as needed. The arguments passed to `window.postMessage()` (_i.e.,_ the
  /// "message") are
  /// [exposed to the receiving window through the event object](#the_dispatched_event).
  external void postMessage(
    JSAny? message, [
    JSAny optionsOrTargetOrigin,
    JSArray<JSObject> transfer,
  ]);

  /// The [Window] interface's **`matchMedia()`** method
  /// returns a new [MediaQueryList] object that can then be used to determine
  /// if
  /// the [document] matches the
  /// [media query](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries/Using_media_queries)
  /// string,
  /// as well as to monitor the document to detect when it matches (or stops
  /// matching) that
  /// media query.
  external MediaQueryList matchMedia(String query);

  /// The **`moveTo()`** method of the [Window]
  /// interface moves the current window to the specified coordinates.
  ///
  /// > [!NOTE]
  /// > This function moves the window to an absolute location. In
  /// > contrast, [window.moveBy] moves the window relative to its current
  /// > location.
  external void moveTo(
    int x,
    int y,
  );

  /// The **`moveBy()`** method of the [Window]
  /// interface moves the current window by a specified amount.
  ///
  /// > [!NOTE]
  /// > This function moves the window relative to its current
  /// > location. In contrast, [window.moveTo] moves the window to an absolute
  /// > location.
  external void moveBy(
    int x,
    int y,
  );

  /// The **`Window.resizeTo()`** method dynamically resizes the
  /// window.
  external void resizeTo(
    int width,
    int height,
  );

  /// The **`Window.resizeBy()`** method resizes the current window
  /// by a specified amount.
  external void resizeBy(
    int x,
    int y,
  );

  /// The **`Window.scroll()`** method scrolls the window to a
  /// particular place in the document.
  external void scroll([
    JSAny optionsOrX,
    num y,
  ]);

  /// **`Window.scrollTo()`** scrolls to a particular set of
  /// coordinates in the document.
  external void scrollTo([
    JSAny optionsOrX,
    num y,
  ]);

  /// The **`Window.scrollBy()`** method scrolls the document in the
  /// window by the given amount.
  external void scrollBy([
    JSAny optionsOrX,
    num y,
  ]);

  /// The
  /// **`Window.getComputedStyle()`** method returns an object
  /// containing the values of all CSS properties of an element, after applying
  /// active
  /// stylesheets and resolving any basic computation those values may contain.
  ///
  /// Individual CSS property values are accessed through APIs provided by the
  /// object, or by
  /// indexing with CSS property names.
  external CSSStyleDeclaration getComputedStyle(
    Element elt, [
    String? pseudoElt,
  ]);

  /// The **`Window.captureEvents()`** method does nothing.
  ///
  /// > [!NOTE]
  /// > This is an method long removed from the specification. It is kept in
  /// > browsers to prevent code breakage but does nothing.
  external void captureEvents();

  /// Releases the window from trapping events of a specific type.
  external void releaseEvents();

  /// The **`window.requestIdleCallback()`** method queues a function
  /// to be called during a browser's idle periods. This enables developers to
  /// perform
  /// background and low priority work on the main event loop, without impacting
  /// latency-critical events such as animation and input response. Functions
  /// are generally
  /// called in first-in-first-out order; however, callbacks which have a
  /// `timeout`
  /// specified may be called out-of-order if necessary in order to run them
  /// before the
  /// timeout elapses.
  ///
  /// You can call `requestIdleCallback()` within an idle callback function to
  /// schedule another callback to take place no sooner than the next pass
  /// through the event
  /// loop.
  ///
  /// > [!NOTE]
  /// > A `timeout` option is strongly recommended for required work,
  /// > as otherwise it's possible multiple seconds will elapse before the
  /// > callback is fired.
  external int requestIdleCallback(
    IdleRequestCallback callback, [
    IdleRequestOptions options,
  ]);

  /// The **`window.cancelIdleCallback()`** method cancels a callback
  /// previously scheduled with [window.requestIdleCallback].
  external void cancelIdleCallback(int handle);

  /// The **`getSelection()`** method of the [Window] interface returns the
  /// [Selection] object associated with the window's [document], representing
  /// the range of text selected by the user or the current position of the
  /// caret.
  external Selection? getSelection();

  /// The **`reportError()`** method of the [Window] interface may be used to
  /// report errors to the console or event handlers of global scopes, emulating
  /// an uncaught JavaScript exception.
  ///
  /// This feature is primarily intended for custom event-dispatching or
  /// callback-manipulating libraries.
  /// Libraries can use this feature to catch errors in callback code and
  /// re-throw them to the top level handler.
  /// This ensures that an exception in one callback will not prevent others
  /// from being handled, while at the same time ensuring that stack trace
  /// information is still readily available for debugging at the top level.
  external void reportError(JSAny? e);

  /// The **`btoa()`** method of the [Window] interface creates a
  /// -encoded  string from a _binary string_ (i.e., a
  /// string in which each character in the string is treated as a byte
  /// of binary data).
  ///
  /// You can use this method to encode data which may otherwise cause
  /// communication
  /// problems, transmit it, then use the [Window.atob] method to decode the
  /// data again.
  /// For example, you can encode control characters such as ASCII values 0
  /// through 31.
  ///
  /// Also consider using the `Uint8Array.prototype.toBase64()` method if your
  /// data is in a `Uint8Array` object to avoid creating a string containing raw
  /// bytes.
  external String btoa(String data);

  /// The **`atob()`** method of the [Window] interface decodes a
  /// string of data which has been encoded using  encoding. You can use
  /// the [Window.btoa] method to encode and transmit
  /// data which may otherwise cause communication problems, then transmit it
  /// and use the
  /// `atob()` method to decode the data again. For example, you can encode,
  /// transmit, and decode control characters such as  values 0 through 31.
  ///
  /// Also consider using the `Uint8Array.fromBase64()` method, which creates a
  /// `Uint8Array` object from a base64-encoded string. It results in a byte
  /// array, which is easier to work with than a string containing raw bytes.
  external String atob(String data);

  /// The **`setTimeout()`** method of the [Window] interface sets a timer which
  /// executes a function or specified piece of code once the timer expires.
  external int setTimeout(
    TimerHandler handler, [
    int timeout,
    JSAny? argument1,
    JSAny? argument2,
    JSAny? argument3,
    JSAny? argument4,
  ]);

  /// The **`clearTimeout()`** method of the [Window] interface cancels a
  /// timeout previously established by calling [Window.setTimeout].
  ///
  /// If the parameter provided does not identify a previously established
  /// action,
  /// this method does nothing.
  external void clearTimeout([int id]);

  /// The **`setInterval()`** method of the [Window] interface repeatedly calls
  /// a function or executes a code snippet, with a fixed time delay between
  /// each call.
  ///
  /// This method returns an interval ID which uniquely identifies the interval,
  /// so you can remove it later by calling [Window.clearInterval].
  external int setInterval(
    TimerHandler handler, [
    int timeout,
    JSAny? argument1,
    JSAny? argument2,
    JSAny? argument3,
    JSAny? argument4,
  ]);

  /// The **`clearInterval()`** method of the [Window] interface cancels a
  /// timed, repeating action which was previously established by a call to
  /// [Window.setInterval]. If the parameter provided does not identify a
  /// previously established action, this method does nothing.
  external void clearInterval([int id]);

  /// The **`queueMicrotask()`** method of the [Window] interface
  /// queues a microtask to be executed at a safe time prior to control
  /// returning to the
  /// browser's event loop.
  ///
  /// The microtask is a short function which will run after
  /// the current task has completed its work and when there is no other code
  /// waiting to be
  /// run before control of the execution context is returned to the browser's
  /// event loop.
  ///
  /// This lets your code run without interfering with any other, potentially
  /// higher
  /// priority, code that is pending, but before the browser regains control
  /// over the
  /// execution context, potentially depending on work you need to complete. You
  /// can learn
  /// more about how to use microtasks and why you might choose to do so in our
  /// [microtask guide](https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API/Microtask_guide).
  ///
  /// The importance of microtasks comes in its ability to perform tasks
  /// asynchronously but
  /// in a specific order. See [Using microtasks in JavaScript with
  /// `queueMicrotask()`](https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API/Microtask_guide)
  /// for more details.
  ///
  /// Microtasks are especially useful for libraries and frameworks that need to
  /// perform
  /// final cleanup or other just-before-rendering tasks.
  external void queueMicrotask(VoidFunction callback);

  /// The **`createImageBitmap()`** method of the [Window] interface creates a
  /// bitmap from a given source, optionally cropped to contain only a portion
  /// of that source.
  /// It accepts a variety of different image sources, and returns a `Promise`
  /// which resolves to an [ImageBitmap].
  external JSPromise<ImageBitmap> createImageBitmap(
    ImageBitmapSource image, [
    JSAny optionsOrSx,
    int sy,
    int sw,
    int sh,
    ImageBitmapOptions options,
  ]);

  /// The **`structuredClone()`** method of the [Window] interface creates a
  /// [deep clone](https://developer.mozilla.org/en-US/docs/Glossary/Deep_copy)
  /// of a given value using the
  /// [structured clone algorithm](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
  ///
  /// The method also allows
  /// [transferable objects](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects)
  /// in the original value to be _transferred_ rather than cloned to the new
  /// object.
  /// Transferred objects are detached from the original object and attached to
  /// the new object; they are no longer accessible in the original object.
  external JSAny? structuredClone(
    JSAny? value, [
    StructuredSerializeOptions options,
  ]);

  /// The **`fetch()`** method of the [Window] interface starts the process of
  /// fetching a resource from the network, returning a promise that is
  /// fulfilled once the response is available.
  ///
  /// The promise resolves to the [Response] object representing the response to
  /// your request.
  ///
  /// A `fetch()` promise only rejects when the request fails, for example,
  /// because of a badly-formed request URL or a network error.
  /// A `fetch()` promise _does not_ reject if the server responds with HTTP
  /// status codes that indicate errors (`404`, `504`, etc.).
  /// Instead, a `then()` handler must check the [Response.ok] and/or
  /// [Response.status] properties.
  ///
  /// The `fetch()` method is controlled by the `connect-src` directive of
  /// [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy)
  /// rather than the directive of the resources it's retrieving.
  ///
  /// > [!NOTE]
  /// > The `fetch()` method's parameters are identical to those of the
  /// > [Request.Request] constructor.
  external JSPromise<Response> fetch(
    RequestInfo input, [
    RequestInit init,
  ]);

  /// The **`window.requestAnimationFrame()`** method tells the
  /// browser you wish to perform an animation. It requests the browser to call
  /// a
  /// user-supplied callback function before the next repaint.
  ///
  /// The frequency of calls to the callback function will generally match the
  /// display
  /// refresh rate. The most common refresh rate is 60hz,
  /// (60 cycles/frames per second), though 75hz, 120hz, and 144hz are also
  /// widely used.
  /// `requestAnimationFrame()` calls are paused in most browsers when running
  /// in
  /// background tabs or hidden `iframe`s, in order to improve
  /// performance and battery life.
  ///
  /// > [!NOTE]
  /// > Your callback function must call `requestAnimationFrame()` again if
  /// > you want to animate another frame. `requestAnimationFrame()` is
  /// > one-shot.
  ///
  /// > [!WARNING]
  /// > Be sure always to use the first argument (or some other method for
  /// > getting the current time) to calculate how much the animation will
  /// > progress in
  /// > a frame — **otherwise, the animation will run faster on high
  /// > refresh-rate screens**.
  /// > For ways to do that, see the examples below.
  external int requestAnimationFrame(FrameRequestCallback callback);

  /// The **`window.cancelAnimationFrame()`** method cancels an
  /// animation frame request previously scheduled through a call to
  /// [window.requestAnimationFrame].
  external void cancelAnimationFrame(int handle);

  /// The **`window`** property of a [Window] object points to the window object
  /// itself.
  ///
  /// Thus, the following expressions all return the same window object:
  ///
  /// ```js
  /// window.window;
  /// window.window.window;
  /// window.window.window.window;
  /// // …
  /// ```
  ///
  /// In web pages, the window object is also a _global object_. This means:
  ///
  /// 1. Global variables of your script are, in fact, properties of `window`:
  ///
  /// ```js
  /// var global = { data: 0 };
  /// alert(global === window.global); // displays "true"
  /// ```
  ///
  /// 2. You can access the built-in properties of the window object without
  /// having to prefix them with `window.`:
  ///
  /// ```js
  /// setTimeout("alert('Hi!')", 50); // equivalent to using
  /// window.setTimeout().
  /// alert(window === window.window); // displays "true"
  /// ```
  ///
  /// The point of having the `window` property refer to the object itself, was
  /// likely to make it easy to refer to the global object. Otherwise, you'd
  /// have to do a manual `let window = this;` assignment at the top of your
  /// script.
  ///
  /// Another reason, is that without this property you wouldn't be able to
  /// write, for example, . You'd have to use `open('https://google.com/')`
  /// instead.
  ///
  /// Yet another reason to use this property, is for libraries which wish to
  /// offer OOP-versions, and non-OOP versions (especially JavaScript modules).
  /// For example, if we refer to "this.window\.location.href", a
  /// [JavaScript module](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)
  /// could define a property called "window" inside of a class it defined
  /// (since no global "window" variable exists for it by default) which could
  /// be created after passing in a window object to the module class'
  /// constructor. Thus, "this.window" inside of its functions would refer to
  /// that window object. In the non-namespaced version, "this.window" would
  /// refer back to "window", and also be able to readily get the document
  /// location. Another advantage, is that the objects of such a class (even if
  /// the class were defined outside of a module) could change their reference
  /// to the window at will, they would not be able to do this if they had
  /// hard-coded a reference to "window". The default in the class could still
  /// be set as the current window object.
  external Window get window;

  /// The **`Window.self`** read-only property returns the window itself, as a .
  /// It can be used with dot notation on a `window` object (that is,
  /// `window.self`) or standalone (`self`). The advantage of the standalone
  /// notation is that a similar notation exists for non-window contexts, such
  /// as in [Worker]. By using `self`, you can refer to the global scope in a
  /// way that will work not only in a window context (`self` will resolve to
  /// `window.self`) but also in a worker context (`self` will then resolve to
  /// [WorkerGlobalScope.self]).
  external Window get self;

  /// **`window.document`** returns a reference to the
  /// [document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
  /// contained in the window.
  external Document get document;

  /// The `Window.name` property
  /// gets/sets the name of the window's browsing context.
  external String get name;
  external set name(String value);

  /// The **`Window.location`** read-only property returns a [Location] object
  /// with information about the current location of the document.
  ///
  /// Though `Window.location` is a _read-only_ `Location` object, you can also
  /// assign a string to it.
  /// This means that you can work with `location` as if it were a string in
  /// most cases:
  /// `location = 'http://www.example.com'` is a synonym of `location.href =
  /// 'http://www.example.com'`.
  ///
  /// See [Location] for all available properties.
  external Location get location;

  /// The `Window.history` read-only property returns a reference to the
  /// [History] object, which provides an interface for manipulating the browser
  /// _session history_ (pages visited in the tab or frame that the current page
  /// is loaded in).
  ///
  /// See
  /// [Manipulating the browser history](https://developer.mozilla.org/en-US/docs/Web/API/History_API)
  /// for examples and details. In particular, that article explains security
  /// features of the [History.pushState] and [History.replaceState] methods
  /// that you should be aware of before using them.
  external History get history;

  /// The **`customElements`** read-only property of the [Window] interface
  /// returns a reference to the [CustomElementRegistry] object, which can be
  /// used to register new
  /// [custom elements](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements)
  /// and get information about previously registered custom elements.
  external CustomElementRegistry get customElements;

  /// Returns the `locationbar` object.
  ///
  /// This is one of a group of `Window` properties that contain a boolean
  /// `visible` property, that used to represent whether or not a particular
  /// part of a web browser's user interface was visible.
  ///
  /// For privacy and interoperability reasons, the value of the `visible`
  /// property is now `false` if this `Window` is a popup, and `true` otherwise.
  external BarProp get locationbar;

  /// Returns the `menubar` object.
  ///
  /// This is one of a group of `Window` properties that contain a boolean
  /// `visible` property, that used to represent whether or not a particular
  /// part of a web browser's user interface was visible.
  ///
  /// For privacy and interoperability reasons, the value of the `visible`
  /// property is now `false` if this `Window` is a popup, and `true` otherwise.
  external BarProp get menubar;

  /// Returns the `personalbar` object.
  ///
  /// This is one of a group of `Window` properties that contain a boolean
  /// `visible` property, that used to represent whether or not a particular
  /// part of a web browser's user interface was visible.
  ///
  /// For privacy and interoperability reasons, the value of the `visible`
  /// property is now `false` if this `Window` is a popup, and `true` otherwise.
  external BarProp get personalbar;

  /// Returns the `scrollbars` object.
  ///
  /// This is one of a group of `Window` properties that contain a boolean
  /// `visible` property, that used to represent whether or not a particular
  /// part of a web browser's user interface was visible.
  ///
  /// For privacy and interoperability reasons, the value of the `visible`
  /// property is now `false` if this `Window` is a popup, and `true` otherwise.
  external BarProp get scrollbars;

  /// Returns the `statusbar` object.
  ///
  /// This is one of a group of `Window` properties that contain a boolean
  /// `visible` property, that used to represent whether or not a particular
  /// part of a web browser's user interface was visible.
  ///
  /// For privacy and interoperability reasons, the value of the `visible`
  /// property is now `false` if this `Window` is a popup, and `true` otherwise.
  external BarProp get statusbar;

  /// Returns the `toolbar` object.
  ///
  /// This is one of a group of `Window` properties that contain a boolean
  /// `visible` property, that used to represent whether or not a particular
  /// part of a web browser's user interface was visible.
  ///
  /// For privacy and interoperability reasons, the value of the `visible`
  /// property is now `false` if this `Window` is a popup, and `true` otherwise.
  external BarProp get toolbar;

  /// The **`status`** property of the
  /// [Window] interface was originally intended to set the text in the status
  /// bar at the bottom of the browser window. However, the HTML standard now
  /// requires
  /// setting `window.status` to have no effect on the text displayed in the
  /// status bar.
  external String get status;
  external set status(String value);

  /// The **`Window.closed`** read-only property indicates whether
  /// the referenced window is closed or not.
  external bool get closed;

  /// Returns the window itself, which is an array-like object, listing the
  /// direct sub-frames
  /// of the current window.
  external Window get frames;

  /// Returns the number of frames (either `frame` or
  /// `iframe` elements) in the window.
  external int get length;

  /// Returns a reference to the topmost window in the window hierarchy.
  external Window? get top;

  /// The [Window] interface's
  /// **`opener`** property returns a reference to the window that
  /// opened the window, either with [Window.open], or by navigating
  /// a link with a
  /// [`target`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#target)
  /// attribute.
  ///
  /// In other words, if window `A` opens window `B`,
  /// `B.opener` returns `A`.
  external JSAny? get opener;
  external set opener(JSAny? value);

  /// The **`Window.parent`** property is a reference to the parent
  /// of the current window or subframe.
  ///
  /// If a window does not have a parent, its `parent` property is a reference
  /// to
  /// itself.
  ///
  /// When a window is loaded in an `iframe`, `object`, or
  /// `frame`, its parent is the window with the element embedding the
  /// window.
  external Window? get parent;

  /// The **`Window.frameElement`** property
  /// returns the element (such as `iframe` or `object`)
  /// in which the window is embedded.
  ///
  /// > [!NOTE]
  /// > Despite this property's name, it works for documents embedded
  /// > within any embedding point, including `object`,
  /// > `iframe`, or `embed`.
  external Element? get frameElement;

  /// The **`Window.navigator`** read-only property returns a
  /// reference to the [Navigator] object, which has methods and properties
  /// about
  /// the application running the script.
  external Navigator get navigator;

  /// Returns the orientation in degrees (in 90-degree increments) of the
  /// viewport relative to the device's natural orientation.
  ///
  /// Its only possible values are `-90`, `0`, `90`, and `180`. Positive values
  /// are counterclockwise; negative values are clockwise.
  ///
  /// This property is deprecated. Use the [Screen.orientation] property
  /// instead, available on the [window.screen] property.
  external int get orientation;
  external EventHandler get onorientationchange;
  external set onorientationchange(EventHandler value);

  /// The **`cookieStore`** read-only property of the [Window] interface returns
  /// a reference to the [CookieStore] object for the current document context.
  /// This is an entry point for the
  /// [Cookie Store API](https://developer.mozilla.org/en-US/docs/Web/API/Cookie_Store_API).
  external CookieStore get cookieStore;

  /// The [Window] property **`screen`** returns a
  /// reference to the screen object associated with the window. The `screen`
  /// object, implementing the [Screen] interface, is a special object for
  /// inspecting properties of the screen on which the current window is being
  /// rendered.
  external Screen get screen;

  /// The **`visualViewport`** read-only property of the [Window] interface
  /// returns a [VisualViewport] object representing the visual viewport for a
  /// given window, or `null` if current document is not fully active.
  external VisualViewport? get visualViewport;

  /// The read-only [Window] property **`innerWidth`** returns the interior
  /// width of the window in pixels (that is, the width of the window's ). That
  /// includes the width of the vertical scroll bar, if one is present.
  ///
  /// Similarly, the interior height of the window (that is, the height of the
  /// layout viewport) can be obtained using the [Window.innerHeight] property.
  /// That measurement also accounts for the height of the horizontal scroll
  /// bar, if it is visible.
  external int get innerWidth;

  /// The read-only **`innerHeight`** property of the
  /// [Window] interface returns the interior height of the window in pixels,
  /// including the height of the horizontal scroll bar, if present.
  ///
  /// The value of `innerHeight` is taken from the height of the window's
  /// . The width can be obtained using the
  /// [Window.innerWidth] property.
  external int get innerHeight;

  /// The read-only **`scrollX`** property of the [Window] interface returns the
  /// number of pixels by which the document is currently scrolled horizontally.
  /// This value is subpixel precise in modern browsers, meaning that it isn't
  /// necessarily a whole number. You can get the number of pixels the document
  /// is scrolled vertically from the [Window.scrollY] property.
  external double get scrollX;

  /// The read-only **`scrollY`** property of the [Window] interface returns the
  /// number of pixels by which the document is currently scrolled vertically.
  /// This value is subpixel precise in modern browsers, meaning that it isn't
  /// necessarily a whole number. You can get the number of pixels the document
  /// is scrolled horizontally from the [Window.scrollX] property.
  external double get scrollY;

  /// The **`Window.screenX`** read-only property returns the
  /// horizontal distance, in CSS pixels, of the left border of the user's
  /// browser viewport to
  /// the left side of the screen.
  ///
  /// > [!NOTE]
  /// > An alias of `screenX` was implemented across modern
  /// > browsers in more recent times — [Window.screenLeft]. This was originally
  /// > supported only in IE but was introduced everywhere due to popularity.
  external int get screenX;

  /// The **`Window.screenLeft`** read-only property returns the
  /// horizontal distance, in CSS pixels, from the left border of the user's
  /// browser viewport
  /// to the left side of the screen.
  ///
  /// > **Note:** `screenLeft` is an alias of the older
  /// > [Window.screenX] property. `screenLeft` was originally
  /// > supported only in IE but was introduced everywhere due to popularity.
  external int get screenLeft;

  /// The **`Window.screenY`** read-only property returns the vertical distance,
  /// in CSS pixels, of the top border of the user's browser viewport to the top
  /// edge of the screen.
  ///
  /// > [!NOTE]
  /// > An alias of `screenY` was implemented across modern browsers in more
  /// > recent times — [Window.screenTop]. This was originally supported only in
  /// > IE but was introduced everywhere due to popularity.
  external int get screenY;

  /// The **`Window.screenTop`** read-only property returns the
  /// vertical distance, in CSS pixels, from the top border of the user's
  /// browser viewport to
  /// the top side of the screen.
  ///
  /// > **Note:** `screenTop` is an alias of the older
  /// > [Window.screenY] property. `screenTop` was originally
  /// > supported only in IE but was introduced everywhere due to popularity.
  external int get screenTop;

  /// **`Window.outerWidth`** read-only property returns the width of the
  /// outside of the browser window. It represents the width of the whole
  /// browser window including sidebar (if expanded), window chrome and window
  /// resizing borders/handles.
  external int get outerWidth;

  /// The **`Window.outerHeight`** read-only property returns the height in
  /// pixels of the whole browser window, including any sidebar, window chrome,
  /// and window-resizing borders/handles.
  external int get outerHeight;

  /// The **`devicePixelRatio`** of [Window] interface returns the ratio of the
  /// resolution in _physical pixels_ to the resolution in _CSS pixels_ for the
  /// current display device.
  ///
  /// This value could also be interpreted as the ratio of pixel sizes: the size
  /// of one _CSS pixel_ to the size of one _physical pixel_.
  /// In simpler terms, this tells the browser how many of the screen's actual
  /// pixels should be used to draw a single CSS pixel.
  ///
  /// Page zooming affects the value of `devicePixelRatio`. When a page is
  /// zoomed in (made larger), the size of a CSS pixel increases, and so the
  /// `devicePixelRatio` value increases.
  /// Pinch-zooming does not affect `devicePixelRatio`, because this magnifies
  /// the page without changing the size of a CSS pixel.
  ///
  /// This is useful when dealing with the difference between rendering on a
  /// standard display versus a HiDPI or Retina display, which use more screen
  /// pixels to draw the same objects, resulting in a sharper image.
  ///
  /// You can use [Window.matchMedia] to check if the value of
  /// `devicePixelRatio` changes (which can happen, for example, if the user
  /// drags the window to a display with a different pixel density).
  /// See
  /// [the example below](#monitoring_screen_resolution_or_zoom_level_changes).
  external double get devicePixelRatio;

  /// The read-only [Window] property **`event`** returns the [Event] which is
  /// currently being handled by the site's code. Outside the context of an
  /// event handler, the value is always `undefined`.
  ///
  /// You _should_ avoid using this property in new code, and should instead use
  /// the [Event] passed into the event handler function. This property is not
  /// universally supported and even when supported introduces potential
  /// fragility to your code.
  ///
  /// > [!NOTE]
  /// > This property can be fragile, in that there may be situations in which
  /// > the returned `Event` is not the expected value. In addition,
  /// > `Window.event` is not accurate for events dispatched within .
  external Event? get event;

  /// The `external` property of the [Window] API returns an instance of the
  /// `External` interface, which was intended to contain functions related to
  /// adding external search providers to the browser. However, this is now
  /// deprecated, and the contained methods are now dummy functions that do
  /// nothing as per spec.
  external External get external;
  external EventHandler get onappinstalled;
  external set onappinstalled(EventHandler value);
  external EventHandler get onbeforeinstallprompt;
  external set onbeforeinstallprompt(EventHandler value);
  external EventHandler get ondeviceorientation;
  external set ondeviceorientation(EventHandler value);
  external EventHandler get ondeviceorientationabsolute;
  external set ondeviceorientationabsolute(EventHandler value);
  external EventHandler get ondevicemotion;
  external set ondevicemotion(EventHandler value);

  /// The `speechSynthesis` read-only property of the Window object returns a
  /// [SpeechSynthesis] object, which is the entry point into using
  /// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
  /// speech synthesis functionality.
  external SpeechSynthesis get speechSynthesis;
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onauxclick;
  external set onauxclick(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforetoggle;
  external set onbeforetoggle(EventHandler value);
  external EventHandler get onblur;
  external set onblur(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncopy;
  external set oncopy(EventHandler value);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external EventHandler get oncut;
  external set oncut(EventHandler value);
  external EventHandler get ondblclick;
  external set ondblclick(EventHandler value);
  external EventHandler get ondrag;
  external set ondrag(EventHandler value);
  external EventHandler get ondragend;
  external set ondragend(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragover;
  external set ondragover(EventHandler value);
  external EventHandler get ondragstart;
  external set ondragstart(EventHandler value);
  external EventHandler get ondrop;
  external set ondrop(EventHandler value);
  external EventHandler get ondurationchange;
  external set ondurationchange(EventHandler value);
  external EventHandler get onemptied;
  external set onemptied(EventHandler value);
  external EventHandler get onended;
  external set onended(EventHandler value);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onfocus;
  external set onfocus(EventHandler value);
  external EventHandler get onformdata;
  external set onformdata(EventHandler value);
  external EventHandler get oninput;
  external set oninput(EventHandler value);
  external EventHandler get oninvalid;
  external set oninvalid(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeyup;
  external set onkeyup(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onmousedown;
  external set onmousedown(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmousemove;
  external set onmousemove(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseup;
  external set onmouseup(EventHandler value);
  external EventHandler get onpaste;
  external set onpaste(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onplay;
  external set onplay(EventHandler value);
  external EventHandler get onplaying;
  external set onplaying(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onratechange;
  external set onratechange(EventHandler value);
  external EventHandler get onreset;
  external set onreset(EventHandler value);
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onseeked;
  external set onseeked(EventHandler value);
  external EventHandler get onseeking;
  external set onseeking(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
  external EventHandler get onstalled;
  external set onstalled(EventHandler value);
  external EventHandler get onsubmit;
  external set onsubmit(EventHandler value);
  external EventHandler get onsuspend;
  external set onsuspend(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontoggle;
  external set ontoggle(EventHandler value);
  external EventHandler get onvolumechange;
  external set onvolumechange(EventHandler value);
  external EventHandler get onwaiting;
  external set onwaiting(EventHandler value);
  external EventHandler get onwheel;
  external set onwheel(EventHandler value);
  external EventHandler get onanimationstart;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationcancel;
  external set onanimationcancel(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerleave;
  external set onpointerleave(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectionchange;
  external set onselectionchange(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchcancel;
  external set ontouchcancel(EventHandler value);
  external EventHandler get onafterprint;
  external set onafterprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeprint(EventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external EventHandler get onhashchange;
  external set onhashchange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onoffline;
  external set onoffline(EventHandler value);
  external EventHandler get ononline;
  external set ononline(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagehide(EventHandler value);
  external EventHandler get onpagereveal;
  external set onpagereveal(EventHandler value);
  external EventHandler get onpageshow;
  external set onpageshow(EventHandler value);
  external EventHandler get onpageswap;
  external set onpageswap(EventHandler value);
  external EventHandler get onpopstate;
  external set onpopstate(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onstorage;
  external set onstorage(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunload;
  external set onunload(EventHandler value);
  external EventHandler get ongamepadconnected;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set ongamepaddisconnected(EventHandler value);

  /// The **`origin`** read-only property of the [Window] interface returns the
  /// origin of the global scope, serialized as a string.
  external String get origin;

  /// The **`isSecureContext`** read-only property of the [Window] interface
  /// returns a boolean indicating whether the current
  /// [context is secure](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts)
  /// (`true`) or not (`false`).
  external bool get isSecureContext;

  /// The **`crossOriginIsolated`** read-only property of the [Window] interface
  /// returns a boolean value that indicates whether the document is
  /// cross-origin isolated.
  ///
  /// A cross-origin isolated document only shares its  with same-origin
  /// documents in popups and navigations, and resources (both same-origin and
  /// cross-origin) that the document has opted into using via
  /// [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) (and
  /// [COEP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Embedder-Policy)
  /// for `<iframe>`).
  /// The relationship between a cross-origin opener of the document or any
  /// cross-origin popups that it opens are severed.
  /// The document may also be hosted in a separate OS process alongside other
  /// documents with which it can communicate by operating on shared memory.
  /// This mitigates the risk of side-channel attacks and cross-origin attacks
  /// referred to as [XS-Leaks](https://xsleaks.dev/).
  ///
  /// Cross-origin isolated documents operate with fewer restrictions when using
  /// the following APIs:
  ///
  /// - `SharedArrayBuffer` can be created and sent via a [Window.postMessage]
  ///   or a [MessagePort.postMessage] call.
  /// - [Performance.now] offers better precision.
  /// - [Performance.measureUserAgentSpecificMemory] can be called.
  ///
  /// A document will be cross-origin isolated if it is returned with an HTTP
  /// response that includes the headers:
  ///
  /// - header with the directive `same-origin`.
  /// - header with the directive `require-corp` or `credentialless`.
  ///
  /// Access to the APIs must also be allowed by the `Permissions-Policy` .
  /// Otherwise `crossOriginIsolated` property will return `false`, and the
  /// document will not be able to use the APIs listed above with reduced
  /// restrictions.
  external bool get crossOriginIsolated;

  /// The **`indexedDB`** read-only property of the [Window] interface provides
  /// a mechanism for applications to
  /// asynchronously access the capabilities of indexed databases.
  external IDBFactory get indexedDB;

  /// The **`crypto`** read-only property of the [Window] interface returns the
  /// [Crypto] object for this window's scope. This object gives web pages
  /// access to certain cryptographic related services.
  ///
  /// Although the property itself is read-only, all of its methods (and the
  /// methods of its
  /// child object, [SubtleCrypto]) are not read-only, and therefore vulnerable
  /// to attack by .
  ///
  /// Although `crypto` is available on all windows, the returned `Crypto`
  /// object only has one usable feature in insecure contexts: the
  /// [Crypto.getRandomValues] method. In general, you should use this API only
  /// in secure contexts.
  external Crypto get crypto;

  /// The **`performance`** property of the [Window] interface returns a
  /// [Performance] object, which can be used to gather performance information
  /// about code running in the window's scope.
  ///
  /// Performance entries are per context. If you create a mark on the main
  /// thread (or other worker), you cannot see it in a worker thread, and vice
  /// versa.
  external Performance get performance;

  /// The **`scheduler`** read-only property of the [Window] interface is the
  /// entry point for using the
  /// [Prioritized Task Scheduling API](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API).
  ///
  /// It returns a [Scheduler] object instance containing [Scheduler.postTask]
  /// and [Scheduler.yield] methods that can be used to schedule prioritized
  /// tasks.
  external Scheduler get scheduler;

  /// The **`caches`** read-only property of the [Window] interface returns the
  /// [CacheStorage] object associated with the current context.
  /// This object enables functionality such as storing assets for offline use,
  /// and generating custom responses to requests.
  external CacheStorage get caches;

  /// The **`trustedTypes`** read-only property of the [Window] interface
  /// returns the [TrustedTypePolicyFactory] object associated with the global
  /// object, providing the entry point for using the [Trusted Types API].
  external TrustedTypePolicyFactory get trustedTypes;

  /// The read-only **`sessionStorage`** property accesses a session [Storage]
  /// object for the current . `sessionStorage` is similar to
  /// [Window.localStorage]; the difference is that while `localStorage` is
  /// partitioned by origin only, `sessionStorage` is partitioned by both origin
  /// and browser tabs (top-level browsing contexts). The data in
  /// `sessionStorage` is only kept for the duration of the page session.
  ///
  /// - Whenever a document is loaded in a particular tab in the browser, a
  ///   unique page session gets created and assigned to that particular tab.
  ///   That page session is accessible only in that particular tab. The main
  ///   document, and all embedded  (iframes), are grouped by their origin and
  ///   each origin has access to its own separate storage area.
  /// - If the page has a [Window.opener], the `sessionStorage` is initially a
  ///   copy of the opener's `sessionStorage` object. However, they are still
  ///   separate and changes to one do not affect the other. To prevent the
  ///   `sessionStorage` from being copied, use one of the techniques that
  ///   remove `opener` (see [Window.opener]).
  /// - A page session lasts as long as the tab or the browser is open, and
  ///   survives over page reloads and restores.
  /// - Opening a page in a new tab or window creates a new session with the
  ///   value of the top-level browsing context, which differs from how session
  ///   cookies work.
  /// - Closing the tab/window ends the session and clears the data in
  ///   `sessionStorage`.
  external Storage get sessionStorage;

  /// The **`localStorage`** read-only property of the [window] interface allows
  /// you to access a [Storage] object for the [Document]'s ; the stored data is
  /// saved across browser sessions.
  ///
  /// `localStorage` is similar to [Window.sessionStorage], except that while
  /// `localStorage` data has no expiration time, `sessionStorage` data gets
  /// cleared when the page session ends — that is, when the page is closed.
  /// (`localStorage` data for a document loaded in a "private browsing" or
  /// "incognito" session is cleared when the last "private" tab is closed.)
  external Storage get localStorage;
}
extension type WindowPostMessageOptions._(JSObject _)
    implements StructuredSerializeOptions, JSObject {
  external factory WindowPostMessageOptions({
    JSArray<JSObject> transfer,
    String targetOrigin,
  });

  external String get targetOrigin;
  external set targetOrigin(String value);
}

/// The **`BarProp`** interface of the
/// [Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
/// represents the web browser user interface elements that are exposed to
/// scripts in web pages. Each of the following interface elements are
/// represented by a `BarProp` object.
///
/// - [Window.locationbar]
///   - : The browser location bar.
/// - [Window.menubar]
///   - : The browser menu bar.
/// - [Window.personalbar]
///   - : The browser personal bar.
/// - [Window.scrollbars]
///   - : The browser scrollbars.
/// - [Window.statusbar]
///   - : The browser status bar.
/// - [Window.toolbar]
///   - : The browser toolbar.
///
/// The `BarProp` interface is not accessed directly, but via one of these
/// elements.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BarProp).
extension type BarProp._(JSObject _) implements JSObject {
  /// The **`visible`** read-only property of the [BarProp] interface returns
  /// `true` if the user interface element it represents is visible.
  external bool get visible;
}

/// The **`Location`** interface represents the location (URL) of the object it
/// is linked to. Changes done on it are reflected on the object it relates to.
/// Both the [Document] and [Window] interface have such a linked `Location`,
/// accessible via [Document.location] and [Window.location] respectively.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Location).
extension type Location._(JSObject _) implements JSObject {
  /// The **`assign()`** method of the [Location]
  /// interface causes the window to load
  /// and display the document at the URL specified. After the navigation
  /// occurs, the user can
  /// navigate back to the page that called `Location.assign()` by pressing the
  /// "back" button.
  external void assign(String url);

  /// The **`replace()`** method of the [Location]
  /// interface replaces the current resource with the one at the provided URL.
  /// The difference
  /// from the [Location.assign] method is that after using
  /// `replace()` the current page will not be saved in session [History],
  /// meaning the user won't be able to use the _back_ button to navigate to it.
  /// Not to be confused with the `String` method `String.prototype.replace()`.
  external void replace(String url);

  /// The **`reload()`** method of the [Location] interface reloads the current
  /// URL, like the Refresh button.
  external void reload();

  /// The **`href`** property of the [Location]
  /// interface is a  that returns a string containing the whole
  /// URL, and allows the href to be updated.
  ///
  /// Setting the value of `href` _navigates_ to the provided URL. If you
  /// want _redirection_, use [Location.replace]. The difference from setting
  /// the `href` property value is that when using the `location.replace()`
  /// method, after navigating to the given URL, the current page will not be
  /// saved in session
  /// [history](https://developer.mozilla.org/en-US/docs/Web/API/History_API) —
  /// meaning the user won't be able to use the back button to navigate to it.
  external String get href;
  external set href(String value);

  /// The **`origin`** read-only property of the [Location] interface returns a
  /// string containing the Unicode serialization of the origin of the
  /// location's URL.
  ///
  /// The exact structure varies depending on the type of URL:
  ///
  /// - For URLs using the `ftp:`, `http:`, `https:`, `ws:`, and `wss:` schemes,
  ///   the [Location.protocol] followed by `//`, followed by the
  ///   [Location.host]. Same as `host`, the [Location.port] is only included if
  ///   it's not the default for the protocol.
  /// - For URLs using `file:` scheme, the value is browser dependent.
  /// - For URLs using the `blob:` scheme, the origin of the URL following
  ///   `blob:`, but only if that URL uses the `http:`, `https:`, or `file:`
  ///   scheme. For example, `blob:https://mozilla.org` will have
  ///   `https://mozilla.org`.
  ///
  /// For all other cases, the string `"null"` is returned.
  ///
  /// See [URL.origin] for more information.
  external String get origin;

  /// The **`protocol`** property of the [Location] interface is a string
  /// containing the protocol or scheme of the location's URL, including the
  /// final `":"`. If the port is the default for the protocol (`80` for `ws:`
  /// and `http:`, `443` for `wss:` and `https:`, and `21` for `ftp:`), this
  /// property contains an empty string, `""`.
  ///
  /// This property can be set to change the protocol of the URL. A `":"` is
  /// appended to the provided string if not provided. The provided scheme has
  /// to be compatible with the rest of the URL to be considered valid.
  ///
  /// See [URL.protocol] for more information.
  external String get protocol;
  external set protocol(String value);

  /// The **`host`** property of the [Location] interface is a string containing
  /// the host, which is the [Location.hostname], and then, if the  of the URL
  /// is nonempty, a `":"`, followed by the [Location.port] of the URL. If the
  /// URL does not have a `hostname`, this property contains an empty string,
  /// `""`.
  ///
  /// See [URL.host] for more information.
  external String get host;
  external set host(String value);

  /// The **`hostname`** property of the [Location] interface is a string
  /// containing either the  or  of the location URL. If the URL does not have a
  /// hostname, this property contains an empty string, `""`. IPv4 and IPv6
  /// addresses are normalized, such as stripping leading zeros, and domain
  /// names are converted to
  /// [IDN](https://en.wikipedia.org/wiki/Internationalized_domain_name).
  ///
  /// See [URL.hostname] for more information.
  external String get hostname;
  external set hostname(String value);

  /// The **`port`** property of the [Location] interface is a string containing
  /// the port number of the location's URL. If the port is the default for the
  /// protocol (`80` for `ws:` and `http:`, `443` for `wss:` and `https:`, and
  /// `21` for `ftp:`), this property contains an empty string, `""`.
  ///
  /// This property can be set to change the port of the URL. If the URL has no
  /// [Location.host] or its scheme is `file:`, then setting this property has
  /// no effect. It also silently ignores invalid port numbers.
  ///
  /// See [URL.port] for more information.
  external String get port;
  external set port(String value);

  /// The **`pathname`** property of the [Location]
  /// interface is a string containing the path of the URL for the location. If
  /// there is no path, `pathname` will be empty: otherwise, `pathname` contains
  /// an initial '/' followed by the path of the URL, not including the query
  /// string or fragment.
  external String get pathname;
  external set pathname(String value);

  /// The **`search`** property of the [Location] interface is a search string,
  /// also called a _query string_, that is a string containing a `"?"` followed
  /// by the parameters of the location's URL. If the URL does not have a search
  /// query, this property contains an empty string, `""`.
  ///
  /// This property can be set to change the query string of the URL. When
  /// setting, a single `"?"` prefix is added to the provided value, if not
  /// already present. Setting it to `""` removes the query string.
  ///
  /// The query is  when setting but not percent-decoded when reading.
  ///
  /// Modern browsers provide
  /// [`URLSearchParams`](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams/get#examples)
  /// and
  /// [`URL.searchParams`](/en-US/docs/Web/API/URL/searchParams#examples)
  /// to make it easy to parse out the parameters from the querystring.
  ///
  /// See [URL.search] for more information.
  external String get search;
  external set search(String value);

  /// The **`hash`** property of the [Location] interface is a string containing
  /// a `"#"` followed by the fragment identifier of the location URL. If the
  /// URL does not have a fragment identifier, this property contains an empty
  /// string, `""`.
  ///
  /// See [URL.hash] for more information.
  external String get hash;
  external set hash(String value);

  /// The **`ancestorOrigins`** read-only
  /// property of the [Location] interface is a static
  /// [DOMStringList] containing, in reverse order, the origins of all ancestor
  /// browsing contexts of the document associated with the given [Location]
  /// object.
  ///
  /// You can use `location.ancestorOrigins` in the script for a document to
  /// determine, for example, whenever the document is being framed by a site
  /// which you don't
  /// expect it to be framed by. You can also use it to vary the behavior of the
  /// document
  /// based on what site or list of sites is framing it.
  external DOMStringList get ancestorOrigins;
}

/// The **`History`** interface of the [History API] allows manipulation of the
/// browser _session history_, that is the pages visited in the tab or frame
/// that the current page is loaded in.
///
/// There is only one instance of `history` (It is a _singleton_.) accessible
/// via the global object [Window.history].
///
/// > [!NOTE]
/// > This interface is only available on the main thread ([Window]). It cannot
/// > be accessed in [Worker] or [Worklet] contexts.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/History).
extension type History._(JSObject _) implements JSObject {
  /// The **`go()`** method of the [History] interface loads a specific page
  /// from the
  /// session history. You can use it to move forwards and backwards through the
  /// history
  /// depending on the value of a parameter.
  ///
  /// This method is . Add a listener for the
  /// [Window.popstate_event] event in order to determine when the navigation
  /// has completed.
  external void go([int delta]);

  /// The **`back()`** method of the [History] interface causes
  /// the browser to move back one page in the session history.
  ///
  /// It has the same
  /// effect as calling . If there is no previous
  /// page, this method call does nothing.
  ///
  /// This method is . Add a listener for the
  /// [Window.popstate_event] event in order to determine when the navigation
  /// has completed.
  external void back();

  /// The **`forward()`** method of the [History] interface causes the browser
  /// to move
  /// forward one page in the session history. It has the same effect as calling
  /// [History.go].
  ///
  /// This method is . Add a listener for the [Window.popstate_event] event in
  /// order to determine when the navigation has completed.
  external void forward();

  /// The **`pushState()`** method of the [History] interface adds an entry to
  /// the browser's
  /// session history stack.
  external void pushState(
    JSAny? data,
    String unused, [
    String? url,
  ]);

  /// The **`replaceState()`** method of the [History] interface modifies the
  /// current
  /// history entry, replacing it with the state object and
  /// URL passed in the method parameters. This method is particularly useful
  /// when you want to update the state object or URL of the current history
  /// entry in response
  /// to some user action.
  external void replaceState(
    JSAny? data,
    String unused, [
    String? url,
  ]);

  /// The **`length`** read-only property of the [History] interface
  /// returns an integer representing the number of entries in the session
  /// history, including the currently loaded page.
  ///
  /// For example, for a page loaded in a new tab this property returns `1`.
  external int get length;

  /// The **`scrollRestoration`** property of the [History]
  /// interface allows web applications to explicitly set default scroll
  /// restoration behavior
  /// on history navigation.
  external ScrollRestoration get scrollRestoration;
  external set scrollRestoration(ScrollRestoration value);

  /// The **`state`** read-only property of the [History] interface
  /// returns a value representing the state at the top of the history stack.
  /// This is
  /// a way to look at the state without having to wait for a
  /// [Window.popstate_event] event.
  external JSAny? get state;
}
extension type GetHTMLOptions._(JSObject _) implements JSObject {
  external factory GetHTMLOptions({
    bool serializableShadowRoots,
    JSArray<ShadowRoot> shadowRoots,
  });

  external bool get serializableShadowRoots;
  external set serializableShadowRoots(bool value);
  external JSArray<ShadowRoot> get shadowRoots;
  external set shadowRoots(JSArray<ShadowRoot> value);
}

/// The **`Navigator`** interface represents the state and the identity of the
/// user agent. It allows scripts to query it and to register themselves to
/// carry on some activities.
///
/// A `Navigator` object can be retrieved using the read-only [window.navigator]
/// property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Navigator).
extension type Navigator._(JSObject _) implements JSObject {
  /// The **`getBattery()`** method provides information about the system's
  /// battery.
  /// It returns a battery promise, which resolves with a [BatteryManager]
  /// object providing some properties to get the battery status also some
  /// events you can handle to monitor the battery status.
  /// This implements the [Battery Status API]; see that documentation for
  /// additional details, a guide to using the API, and sample code.
  ///
  /// Since Chrome 103, the `Navigator.getBattery()` method of
  /// [Battery Status API] only expose to secure context.
  ///
  /// > [!NOTE]
  /// > Access to this feature may be controlled by the  directive .
  external JSPromise<BatteryManager> getBattery();

  /// The **`navigator.sendBeacon()`**
  /// method  sends an
  /// [HTTP POST](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST)
  /// request containing a small amount of data to a web server.
  ///
  /// It's intended to be used for
  /// sending analytics data to a web server, and avoids some of the problems
  /// with
  /// legacy techniques for sending analytics, such as the use of
  /// [XMLHttpRequest].
  ///
  /// > [!NOTE]
  /// > For use cases that need the ability to send requests with methods other
  /// > than `POST`, or to change any request properties, or that need access to
  /// > the server response, instead use the
  /// > [`fetch()`](https://developer.mozilla.org/en-US/docs/Web/API/Window/fetch)
  /// > method with
  /// > [`keepalive`](https://developer.mozilla.org/en-US/docs/Web/API/RequestInit#keepalive)
  /// > set to true.
  external bool sendBeacon(
    String url, [
    BodyInit? data,
  ]);

  /// The **`requestMediaKeySystemAccess()`** method of the [Navigator]
  /// interface returns a `Promise` which delivers a [MediaKeySystemAccess]
  /// object that can be used to access a particular media key system, which can
  /// in turn be used to create keys for decrypting a media stream.
  ///
  /// This method is part of the
  /// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API),
  /// which brings support for encrypted media and DRM-protected video to the
  /// web.
  ///
  /// This method may have user-visible effects such as asking for permission to
  /// access one or more system resources.
  /// Consider that when deciding when to call `requestMediaKeySystemAccess()`;
  /// you don't want those requests to happen at inconvenient times.
  /// As a general rule, this function should be called only when it's about
  /// time to create and use a [MediaKeys] object by calling the returned
  /// [MediaKeySystemAccess] object's [MediaKeySystemAccess.createMediaKeys]
  /// method.
  external JSPromise<MediaKeySystemAccess> requestMediaKeySystemAccess(
    String keySystem,
    JSArray<MediaKeySystemConfiguration> supportedConfigurations,
  );

  /// The **`Navigator.getGamepads()`** method returns an array of
  /// [Gamepad] objects, one for each gamepad connected to the device.
  ///
  /// Elements in the array may be `null` if a gamepad disconnects during a
  /// session, so that the remaining gamepads retain the same index.
  external JSArray<Gamepad?> getGamepads();

  /// The **`vibrate()`** method of the [Navigator] interface pulses the
  /// vibration
  /// hardware on the device, if such hardware exists. If the device doesn't
  /// support
  /// vibration, this method has no effect. If a vibration pattern is already in
  /// progress when
  /// this method is called, the previous pattern is halted and the new one
  /// begins instead.
  ///
  /// If the method was unable to vibrate because of invalid parameters, it will
  /// return
  /// `false`, else it returns `true`. If the pattern leads to a too
  /// long vibration, it is truncated: the max length depends on the
  /// implementation.
  external bool vibrate(VibratePattern pattern);

  /// The **`share()`** method of the [Navigator] interface invokes the native
  /// sharing mechanism of the device to share data such as text, URLs, or
  /// files. The available _share targets_ depend on the device, but might
  /// include the clipboard, contacts and email applications, websites,
  /// Bluetooth, etc.
  ///
  /// The method resolves a `Promise` with `undefined`.
  /// On Windows this happens when the share popup is launched, while on Android
  /// the promise resolves once the data has successfully been passed to the
  /// _share target_.
  ///
  /// The
  /// [Web Share API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Share_API)
  /// is gated by the
  /// [web-share](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/web-share)
  /// permission policy.
  /// The `share()` method will throw exceptions if the permission is supported
  /// but has not been granted.
  external JSPromise<JSAny?> share([ShareData data]);

  /// The **`canShare()`** method of the [Navigator] interface returns `true` if
  /// the equivalent call to [navigator.share] would succeed.
  ///
  /// The method returns `false` if the data cannot be _validated_. Reasons the
  /// data might be invalid include:
  ///
  /// - The `data` parameter has been omitted or only contains properties with
  ///   unknown values. Note that any properties that are not recognized by the
  ///   user agent are ignored.
  /// - A URL is badly formatted.
  /// - Files are specified but the implementation does not support file
  ///   sharing.
  /// - Sharing the specified data would be considered a "hostile share" by the
  ///   user-agent.
  ///
  /// The
  /// [Web Share API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Share_API)
  /// is gated by the
  /// [web-share](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/web-share)
  /// permission policy.
  /// The `canShare()` method will return `false` if the permission is supported
  /// but has not been granted.
  external bool canShare([ShareData data]);

  /// The **`requestMIDIAccess()`** method of the [Navigator] interface returns
  /// a `Promise` representing a request for access to MIDI devices on a user's
  /// system.
  /// This method is part of the
  /// [Web MIDI API](https://developer.mozilla.org/en-US/docs/Web/API/Web_MIDI_API),
  /// which provides a means for accessing, enumerating, and manipulating MIDI
  /// devices.
  ///
  /// This method may prompt the user for access to MIDI devices available to
  /// their system, or it may use a previously established preference to grant
  /// or deny access.
  /// If permission is granted then the `Promise` resolves and a
  /// [`MIDIAccess`](https://developer.mozilla.org/en-US/docs/Web/API/MIDIAccess)
  /// object is returned.
  external JSPromise<MIDIAccess> requestMIDIAccess([MIDIOptions options]);

  /// The **`setAppBadge()`** method of the [Navigator] interface sets a badge
  /// on the icon associated with this app. If a value is passed to the method,
  /// this will be set as the value of the badge. Otherwise the badge will
  /// display as a dot, or other indicator as defined by the platform.
  external JSPromise<JSAny?> setAppBadge([int contents]);

  /// The **`clearAppBadge()`** method of the [Navigator] interface clears a
  /// badge on the current app's icon by setting it to `nothing`. The value
  /// `nothing` indicates that no badge is currently set, and the status of the
  /// badge is _cleared_.
  external JSPromise<JSAny?> clearAppBadge();

  /// The **`Navigator.taintEnabled()`** method always returns
  /// `false`.
  ///
  /// Tainting was a security method used by JavaScript 1.2. It has long been
  /// removed; this
  /// method only stays for maintaining compatibility with very old scripts.
  external bool taintEnabled();

  /// The **[Navigator]** method **`registerProtocolHandler()`** lets websites
  /// register their ability to open or handle particular URL schemes (also
  /// known as protocols).
  ///
  /// For example, this API lets webmail sites open `mailto:` URLs, or VoIP
  /// sites open `tel:` URLs.
  ///
  /// To register a protocol handler, a website calls
  /// `registerProtocolHandler()`, passing in the protocol to register and a
  /// template URL.
  ///
  /// When the user activates a link that uses the registered protocol, the
  /// browser will insert the
  /// [`href`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#href)
  /// from the activated link into the URL template supplied during handler
  /// registration, and navigate the current page to the resulting URL.
  ///
  /// The browser may ask the user to confirm that they want the page to be
  /// allowed to handle the protocol, either when the protocol is registered or
  /// when the user activates the link.
  external void registerProtocolHandler(
    String scheme,
    String url,
  );

  /// The **[Navigator]** method **`unregisterProtocolHandler()`** removes a
  /// protocol handler for a given URL [scheme](#permitted_schemes).
  ///
  /// This method is the inverse of **`registerProtocolHandler()`**.
  external void unregisterProtocolHandler(
    String scheme,
    String url,
  );

  /// This method always returns false.
  external bool javaEnabled();

  /// The **`clipboard`** read-only property of the [Navigator] interface
  /// returns a [Clipboard] object used to read and write the clipboard's
  /// contents.
  ///
  /// This is the entry point to the
  /// [Clipboard API](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard_API),
  /// which can be used to implement cut, copy, and paste features within a web
  /// application.
  external Clipboard get clipboard;

  /// The **`credentials`** read-only property of the [Navigator] interface
  /// returns the [CredentialsContainer] object associated with the current
  /// document, which exposes methods to request credentials. The
  /// [CredentialsContainer] interface also notifies the user agent when an
  /// interesting event occurs, such as a successful sign-in or sign-out. This
  /// interface can be used for feature detection.
  external CredentialsContainer get credentials;

  /// The **`Navigator.geolocation`** read-only property returns a
  /// [Geolocation] object that gives Web content access to the location of the
  /// device. This allows a website or app to offer customized results based on
  /// the user's
  /// location.
  ///
  /// > [!NOTE]
  /// > For security reasons, when a web page tries to access location
  /// > information, the user is notified and asked to grant permission. Be
  /// > aware that each
  /// > browser has its own policies and methods for requesting this permission.
  external Geolocation get geolocation;

  /// The read-only **`userActivation`** property of the [Navigator] interface
  /// returns a [UserActivation] object which contains information about the
  /// current window's user activation state.
  external UserActivation get userActivation;

  /// The **`mediaCapabilities`** read-only property of the [Navigator]
  /// interface references a [MediaCapabilities] object that can expose
  /// information about the decoding and encoding capabilities for a given media
  /// format and output capabilities.
  external MediaCapabilities get mediaCapabilities;

  /// The **`mediaDevices`** read-only property of the [Navigator] interface
  /// returns a [MediaDevices] object, which provides access to connected media
  /// input devices like cameras and microphones, as well as screen sharing.
  external MediaDevices get mediaDevices;

  /// The **`mediaSession`** read-only property of the [Navigator]
  /// interface returns a [MediaSession]
  /// object that can be used to share with the browser metadata and other
  /// information about
  /// the current playback state of media being handled by a document.
  ///
  /// This
  /// information may, in turn, be shared with the device and/or operating
  /// system in order to
  /// a device's standard media control user experience to describe and control
  /// the playback
  /// of the media.
  ///
  /// In addition, the `MediaSession` interface provides the
  /// [MediaSession.setActionHandler] method, which lets
  /// you receive events when the user engages device controls such as either
  /// onscreen or
  /// physical play, pause, seek, and other similar controls. An internet radio
  /// app, for
  /// example, can use `setActionHandler()` to let the media controls on a
  /// keyboard
  /// or elsewhere on the user's device be used to control the app's media
  /// playback.
  external MediaSession get mediaSession;

  /// The **`permissions`** read-only property of the [Navigator] interface
  /// returns a
  /// [Permissions] object that can be used to query and update permission
  /// status of APIs covered by the
  /// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
  external Permissions get permissions;

  /// The **`maxTouchPoints`** read-only property of the
  /// [Navigator] interface returns the maximum number of simultaneous touch
  /// contact points that are supported by the current device.
  external int get maxTouchPoints;

  /// The `presentation` read-only property of [Navigator] serves as the entry
  /// point for the
  /// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
  /// and
  /// returns a reference to [Presentation] object.
  external JSObject get presentation;

  /// The **`wakeLock`** read-only property of the [Navigator] interface returns
  /// a [WakeLock] interface that allows a document to acquire a screen wake
  /// lock.
  /// While a screen wake lock is active, the user agent will try to prevent the
  /// device from dimming the screen, turning it off completely, or showing a
  /// screensaver.
  external WakeLock get wakeLock;

  /// The **`serviceWorker`** read-only property of the [Navigator] interface
  /// returns the [ServiceWorkerContainer] object for the
  /// [associated document](https://html.spec.whatwg.org/multipage/browsers.html#concept-document-window),
  /// which provides access to registration, removal, upgrade, and communication
  /// with the [ServiceWorker].
  ///
  /// The feature may not be available in private mode.
  ///
  /// Note that a worker can similarly access the [ServiceWorkerContainer] for a
  /// document using [WorkerNavigator.serviceWorker].
  external ServiceWorkerContainer get serviceWorker;

  /// The **`usb`** read-only property of the [Navigator] interface returns a
  /// [USB] object for the current document, providing access to
  /// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
  /// functionality.
  external JSObject get usb;

  /// The **`windowControlsOverlay`** read-only property of the [Navigator]
  /// interface returns the [WindowControlsOverlay] interface, which exposes
  /// information about the title bar geometry in desktop Progressive Web Apps
  /// that use the
  /// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API).
  ///
  /// Progressive Web Apps installed on desktop Operating Systems can opt-in to
  /// the
  /// Window Controls Overlay feature by using the `window-controls-overlay`
  /// value in the
  /// [`display_override`](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Manifest/Reference/display_override)
  /// web app manifest member.
  ///
  /// Doing so hides the default window title bar and gives the app access to
  /// the full area
  /// of the app window.
  external JSObject get windowControlsOverlay;

  /// The **`deviceMemory`** read-only
  /// property of the [Navigator] interface returns the approximate amount of
  /// device memory in gigabytes.
  ///
  /// The reported value is imprecise to curtail . It's approximated by
  /// rounding down to the nearest power of 2, then dividing that number by
  /// 1024. It is then
  /// clamped within lower and upper bounds to protect the privacy of owners of
  /// very low-memory or
  /// high-memory devices.
  external double get deviceMemory;

  /// The value of the **`Navigator.appCodeName`** property is
  /// always `"Mozilla"`, in any browser. This property is kept only for
  /// compatibility purposes.
  ///
  /// > [!NOTE]
  /// > Do not rely on this property to return a real
  /// > product name. All browsers return `"Mozilla"` as the value of this
  /// > property.
  external String get appCodeName;

  /// The value of the **`Navigator.appName`** property is always
  /// `"Netscape"`, in any browser. This property is kept only for compatibility
  /// purposes.
  ///
  /// > [!NOTE]
  /// > Do not rely on this property to return a real browser name. All browsers
  /// > return `"Netscape"` as the value of this property.
  external String get appName;

  /// Returns either `"4.0"` or a string representing version information about
  /// the browser.
  ///
  /// > [!NOTE]
  /// > Do not rely on this property to return the correct browser version.
  external String get appVersion;

  /// The **`platform`** property read-only property of the [Navigator]
  /// interface returns a string identifying the platform on which the user's
  /// browser is running.
  ///
  /// > [!NOTE]
  /// > In general, you should whenever possible avoid writing code that uses
  /// > methods or properties like this one to try to find out information about
  /// > the user's environment, and instead write code that does
  /// > [feature detection](https://developer.mozilla.org/en-US/docs/Learn_web_development/Extensions/Testing/Feature_detection).
  external String get platform;

  /// The value of the **`Navigator.product`** property is always
  /// `"Gecko"`, in any browser. This property is kept only for compatibility
  /// purposes.
  ///
  /// > [!NOTE]
  /// > Do not rely on this property to return a real product name. All browsers
  /// > return `"Gecko"` as the value of this property.
  external String get product;

  /// The **`Navigator.productSub`** read-only property that returns either the
  /// string "20030107", or the string "20100101".
  external String get productSub;

  /// The **`Navigator.userAgent`** read-only property returns the
  /// user agent string for the current browser.
  ///
  /// > [!NOTE]
  /// > The specification asks browsers to provide as little information via
  /// > this field as
  /// > possible. Never assume that the value of this property will stay the
  /// > same in future
  /// > versions of the same browser. Try not to use it at all, or only for
  /// > current and past
  /// > versions of a browser. New browsers may start using the same UA, or part
  /// > of it, as an
  /// > older browser: you really have no guarantee that the browser agent is
  /// > indeed the one
  /// > advertised by this property.
  /// >
  /// > Also keep in mind that users of a browser can change the value of this
  /// > field if they
  /// > want (UA spoofing).
  ///
  /// Browser identification based on detecting the user agent string is
  /// **unreliable** and **is not recommended**, as the user agent
  /// string is user configurable. For example:
  ///
  /// - In Firefox, you can change the preference `general.useragent.override`
  ///   in
  /// `about:config`. Some Firefox extensions do that; however, this only
  /// changes
  /// the HTTP header that gets sent and that is returned by
  /// `navigator.userAgent`.
  /// There might be other methods that utilize JavaScript code to identify the
  /// browser.
  /// - Opera 6+ allows users to set the browser identification string via a
  ///   menu.
  external String get userAgent;

  /// The value of the [Navigator] **`vendor`** property is always either
  /// `"Google Inc."`, `"Apple Computer, Inc."`, or (in Firefox) the empty
  /// string.
  external String get vendor;

  /// The value of the **`Navigator.vendorSub`** property is always
  /// the empty string, in any browser.
  external String get vendorSub;

  /// The **`Navigator.oscpu`** property returns a string that identifies the
  /// current operating system.
  external String get oscpu;

  /// The **`Navigator.language`** read-only property returns a string
  /// representing the preferred language of the user, usually the language of
  /// the browser UI.
  external String get language;

  /// The **`Navigator.languages`** read-only property
  /// returns an array of strings representing the user's preferred
  /// languages. The language is described using language tags according to
  /// `5646, "Tags for Identifying Languages (also known as BCP 47)"`. In the
  /// returned
  /// array they are ordered by preference with the most preferred language
  /// first.
  ///
  /// The value of [Navigator.language] is the
  /// first element of the returned array.
  ///
  /// When its value changes, as the user's preferred languages are changed a
  /// [Window.languagechange_event] event is fired on the [Window] object.
  ///
  /// The  HTTP header in every HTTP request from the user's browser generally
  /// lists the same locales as the `navigator.languages` property, with
  /// decreasing `q` values (quality values). Some browsers (Chrome and Safari)
  /// add language-only fallback tags in `Accept-Language`—for example,
  /// `en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7` when `navigator.languages` is
  /// `["en-US", "zh-CN"]`. For privacy purposes (reducing ), both
  /// `Accept-Language` and `navigator.languages` may not include the full list
  /// of user preferences, such as in Safari (always) and Chrome's incognito
  /// mode, where only one language is listed.
  external JSArray<JSString> get languages;

  /// The **`onLine`** property of the [Navigator] interface returns whether the
  /// device is connected to the network, with `true` meaning online and `false`
  /// meaning offline. The property's value changes after the browser checks its
  /// network connection, usually when the user follows links or when a script
  /// requests a remote page. For example, the property should return `false`
  /// when users click links soon after they lose internet connection. When its
  /// value changes, an
  /// [`online`](https://developer.mozilla.org/en-US/docs/Web/API/Window/online_event)
  /// or
  /// [`offline`](https://developer.mozilla.org/en-US/docs/Web/API/Window/offline_event)
  /// event is fired on the `window`.
  ///
  /// Browsers and operating systems leverage different heuristics to determine
  /// whether the device is online. In general, connection to LAN is considered
  /// online, even though the LAN may not have Internet access. For example, the
  /// computer may be running a virtualization software that has virtual
  /// ethernet adapters that are always "connected". On Windows, the online
  /// status is determined by whether it can reach a Microsoft home server,
  /// which may be blocked by firewalls or VPNs, even if the computer has
  /// Internet access. Therefore, this property is inherently unreliable, and
  /// you should not disable features based on the online status, only provide
  /// hints when the user may seem offline.
  external bool get onLine;

  /// `navigator.cookieEnabled` returns a Boolean value that indicates whether
  /// cookies are enabled or not.
  ///
  /// The property is read-only.
  external bool get cookieEnabled;

  /// Returns a [PluginArray] object, listing the [Plugin] objects describing
  /// the plugins installed in the application.
  /// Named properties of the returned object are not enumerable (except in very
  /// old browser versions).
  ///
  /// Recent versions of the specification hard-code the returned list.
  /// If inline viewing of PDF files is supported the property lists five
  /// standard plugins.
  /// If inline PDF viewing is not supported then an empty list is returned.
  ///
  /// > [!NOTE]
  /// > Use [Navigator.pdfViewerEnabled] to determine if inline viewing of PDF
  /// > files is supported. Do not infer it from this property.
  /// >
  /// > The "five standard plugins" are those that developers have most commonly
  /// > used to feature detect inline PDF viewing.
  /// > Returning these ensures that legacy code can more reliably determine
  /// > whether inline viewing is supported.
  /// > However this approach is not recommended for new code because this
  /// > property may eventually be removed.
  ///
  /// Legacy browser versions also list plugins for Adobe Flash and PDF viewer
  /// extensions.
  external PluginArray get plugins;

  /// Returns a [MimeTypeArray] object, which contains a list of [MimeType]
  /// objects representing the MIME types recognized and supported by the
  /// browser.
  /// The array can be queried for information about the enabled plugin that is
  /// used to handle a file of the specified type.
  /// Named properties of the returned object are not enumerable (except in very
  /// old browser versions).
  ///
  /// Recent versions of the specification hard-code the returned set of MIME
  /// types.
  /// If PDF files can be displayed inline then `application/pdf` and `text/pdf`
  /// are listed.
  /// Otherwise an empty list is returned.
  ///
  /// > [!NOTE]
  /// > Use [Navigator.pdfViewerEnabled] to determine if inline viewing of PDF
  /// > files is supported. Do not infer it from this property.
  ///
  /// Legacy browser versions do not hard-code the list returned by the
  /// property, and might return other MIME types.
  external MimeTypeArray get mimeTypes;

  /// The **`pdfViewerEnabled`** read-only property of the [Navigator] interface
  /// indicates whether the browser supports inline display of PDF files when
  /// navigating to them.
  ///
  /// If inline viewing is not supported the PDF is downloaded and may then be
  /// handled by some external application.
  ///
  /// > [!NOTE]
  /// > This method replaces a number of legacy methods of inferring support for
  /// > inline viewing of PDF files.
  external bool get pdfViewerEnabled;

  /// The **`navigator.hardwareConcurrency`** read-only property
  /// returns the number of logical processors available to run threads on the
  /// user's
  /// computer.
  external int get hardwareConcurrency;

  /// The **`connection`** read-only property of the [Navigator] interface
  /// returns a [NetworkInformation] object containing information about the
  /// system's connection, such as the current bandwidth of the user's device or
  /// whether the connection is metered.
  ///
  /// This could be used to select high definition content or low definition
  /// content based on the user's connection.
  external NetworkInformation get connection;

  /// The **`Navigator.storage`**
  /// read-only property returns the singleton [StorageManager] object used to
  /// access the overall storage capabilities of the browser for the current
  /// site or app.
  /// The returned object lets you examine and configure persistence of data
  /// stores and
  /// learn approximately how much more space your browser has available for
  /// local storage
  /// use.
  external StorageManager get storage;

  /// The **`locks`** read-only property of
  /// the [Navigator] interface returns a [LockManager] object
  /// which provides methods for requesting a new [Lock] object and querying
  /// for an existing `Lock` object.
  external LockManager get locks;

  /// The **`webdriver`** read-only property
  /// of the [navigator] interface indicates whether the user agent is
  /// controlled by automation.
  ///
  /// It defines a standard way for co-operating user agents to inform the
  /// document that it
  /// is controlled by
  /// [WebDriver](https://developer.mozilla.org/en-US/docs/Web/WebDriver), for
  /// example, so that
  /// alternate code paths can be triggered during automation.
  ///
  /// The `navigator.webdriver` property is true when in:
  ///
  /// - Chrome
  ///   - : The `--enable-automation` or `--headless` flag is used, or the
  /// `--remote-debugging-port` flag specifying port 0 is used.
  /// - Firefox
  ///   - : The `marionette.enabled` preference or `--marionette` flag is
  /// passed.
  external bool get webdriver;
}

/// The `PluginArray` interface is used to store a list of [Plugin] objects;
/// it's returned by the [Navigator.plugins] property. The `PluginArray` is not
/// a JavaScript array, but has the `length` property and supports accessing
/// individual items using bracket notation (`plugins[2]`), as well as via
/// `item(index)` and `namedItem("name")` methods.
///
/// > [!NOTE]
/// > Own properties of `PluginArray` objects are no longer enumerable in the
/// > latest browser versions.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray).
extension type PluginArray._(JSObject _) implements JSObject {
  external void refresh();
  external Plugin? item(int index);
  external Plugin? namedItem(String name);
  external int get length;
}

/// The **`MimeTypeArray`** interface returns an array of [MimeType] instances,
/// each of which contains information about a supported browser plugins. This
/// object is returned by the deprecated [Navigator.mimeTypes] property.
///
/// This interface was an
/// [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// and only continues to be supported to not break code that's already using
/// it. Modern APIs represent list structures using types based on JavaScript
/// [arrays](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array),
/// thus making many array methods available, and at the same time imposing
/// additional semantics on their usage (such as making their items read-only).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray).
extension type MimeTypeArray._(JSObject _) implements JSObject {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external int get length;
}

/// The `Plugin` interface provides information about a browser plugin.
///
/// > [!NOTE]
/// > Own properties of `Plugin` objects are no longer enumerable in the latest
/// > browser versions.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Plugin).
extension type Plugin._(JSObject _) implements JSObject {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external String get name;
  external String get description;
  external String get filename;
  external int get length;
}

/// The **`MimeType`** interface provides contains information about a MIME type
/// associated with a particular plugin. [Navigator.mimeTypes] returns an array
/// of this object.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MimeType).
extension type MimeType._(JSObject _) implements JSObject {
  external String get type;
  external String get description;
  external String get suffixes;
  external Plugin get enabledPlugin;
}

/// The **`ImageBitmap`** interface represents a bitmap image which can be drawn
/// to a `canvas` without undue latency. It can be created from a variety of
/// source objects using the [Window.createImageBitmap] or
/// [WorkerGlobalScope.createImageBitmap] factory method. `ImageBitmap` provides
/// an asynchronous and resource efficient pathway to prepare textures for
/// rendering in WebGL.
///
/// `ImageBitmap` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageBitmap).
extension type ImageBitmap._(JSObject _) implements JSObject {
  /// The **`ImageBitmap.close()`**
  /// method disposes of all graphical resources associated with an
  /// `ImageBitmap`.
  external void close();

  /// The **`ImageBitmap.width`** read-only property returns the [ImageBitmap]
  /// object's width in CSS pixels.
  external int get width;

  /// The **`ImageBitmap.height`** read-only property returns the [ImageBitmap]
  /// object's height in CSS pixels.
  external int get height;
}
extension type ImageBitmapOptions._(JSObject _) implements JSObject {
  external factory ImageBitmapOptions({
    ImageOrientation imageOrientation,
    PremultiplyAlpha premultiplyAlpha,
    ColorSpaceConversion colorSpaceConversion,
    int resizeWidth,
    int resizeHeight,
    ResizeQuality resizeQuality,
  });

  external ImageOrientation get imageOrientation;
  external set imageOrientation(ImageOrientation value);
  external PremultiplyAlpha get premultiplyAlpha;
  external set premultiplyAlpha(PremultiplyAlpha value);
  external ColorSpaceConversion get colorSpaceConversion;
  external set colorSpaceConversion(ColorSpaceConversion value);
  external int get resizeWidth;
  external set resizeWidth(int value);
  external int get resizeHeight;
  external set resizeHeight(int value);
  external ResizeQuality get resizeQuality;
  external set resizeQuality(ResizeQuality value);
}
extension type StructuredSerializeOptions._(JSObject _) implements JSObject {
  external factory StructuredSerializeOptions({JSArray<JSObject> transfer});

  external JSArray<JSObject> get transfer;
  external set transfer(JSArray<JSObject> value);
}

/// The **`Storage`** interface of the
/// [Web Storage API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API)
/// provides access to a particular domain's session or local storage. It
/// allows, for example, the addition, modification, or deletion of stored data
/// items.
///
/// To manipulate, for instance, the session storage for a domain, a call to
/// [Window.sessionStorage] is made; whereas for local storage the call is made
/// to [Window.localStorage].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Storage).
extension type Storage._(JSObject _) implements JSObject {
  /// The **`key()`** method of the [Storage] interface,
  /// when passed a number n, returns the name of the nth key in a given
  /// `Storage`
  /// object. The order of keys is user-agent defined, so you should not rely on
  /// it.
  external String? key(int index);

  /// The **`getItem()`** method of the [Storage]
  /// interface, when passed a key name, will return that key's value, or `null`
  /// if
  /// the key does not exist, in the given `Storage` object.
  external String? getItem(String key);

  /// The **`setItem()`** method of the [Storage]
  /// interface, when passed a key name and value, will add that key to the
  /// given
  /// `Storage` object, or update that key's value if it already exists.
  external void setItem(
    String key,
    String value,
  );

  /// The **`removeItem()`** method of the [Storage]
  /// interface, when passed a key name, will remove that key from the given
  /// `Storage` object if it exists.
  /// The **`Storage`** interface of the
  /// [Web Storage API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API)
  /// provides access to a
  /// particular domain's session or local storage.
  ///
  /// If there is no item associated with the given key, this method will do
  /// nothing.
  external void removeItem(String key);

  /// The **`clear()`** method of the [Storage]
  /// interface clears all keys stored in a given `Storage` object.
  external void clear();

  /// The **`length`** read-only property of the
  /// [Storage] interface returns the number of data items stored in a given
  /// `Storage` object.
  external int get length;
}
extension type External._(JSObject _) implements JSObject {
  external void AddSearchProvider();
  external void IsSearchProviderInstalled();
}
