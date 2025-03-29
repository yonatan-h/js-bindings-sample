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

import 'css_typed_om.dart';
import 'cssom.dart';
import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

/// All of the SVG DOM interfaces that correspond directly to elements in the
/// SVG language derive from the `SVGElement` interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement).
extension type SVGElement._(JSObject _) implements Element, JSObject {
  /// The **`SVGElement.focus()`** method sets focus on the specified SVG
  /// element, if it can be focused.
  /// The focused element is the element that will receive keyboard and similar
  /// events by default.
  ///
  /// By default the browser will scroll the element into view after focusing
  /// it, and it may also provide visible indication of the focused element
  /// (typically by displaying a "focus ring" around the element).
  /// Parameter options are provided to disable the default scrolling and force
  /// visible indication on elements.
  external void focus([FocusOptions options]);

  /// The **`SVGElement.blur()`** method removes keyboard focus from the current
  /// SVG element.
  external void blur();

  /// The **`ownerSVGElement`** property of the [SVGElement] interface reflects
  /// the nearest ancestor  element. `null` if the given element is the
  /// outermost `<svg>` element.
  external SVGSVGElement? get ownerSVGElement;

  /// The **`viewportElement`** property of the [SVGElement] interface
  /// represents the `SVGElement` which established the current viewport. Often
  /// the nearest ancestor  element. `null` if the given element is the
  /// outermost `<svg>` element.
  external SVGElement? get viewportElement;
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

  /// The **`dataset`** read-only property of the [SVGElement] interface
  /// provides read/write access to
  /// [custom data attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/data-*)
  /// (`data-*`) on elements. It exposes a map of strings ([DOMStringMap]) with
  /// an entry for each `data-*` attribute.
  ///
  /// For more information on the behavior of `dataset`, see
  /// [HTMLElement.dataset].
  external DOMStringMap get dataset;

  /// The **`nonce`** property of the [SVGElement] interface returns the nonce
  /// that is used by
  /// [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)
  /// to determine whether a given fetch will be allowed to proceed.
  external String get nonce;
  external set nonce(String value);
  external bool get autofocus;
  external set autofocus(bool value);

  /// The **`tabIndex`** property of the [SVGElement] interface represents the
  /// tab order of the current SVG element.
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

  /// The read-only **`style`** property of the [SVGElement] returns the
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
  /// > stays as is (in lowercase).
  /// > - If the property is made of several words, separated by dashes, the
  /// > dashes are removed and it is converted to : `background-attachment`
  /// > becomes `backgroundAttachment`.
  /// > - The property `float`, being a reserved JavaScript keyword, is
  /// > converted to `cssFloat`.
  /// >
  /// > The `style` property has the same priority in the CSS cascade as an
  /// > inline style declaration set via the `style` attribute.
  external CSSStyleDeclaration get style;

  /// The **`attributeStyleMap`** read-only property of the [SVGElement]
  /// interface returns a live [StylePropertyMap] object that contains a list of
  /// style properties of the element that are defined in the element's inline
  /// `style` attribute, or assigned using the [SVGElement.style] property of
  /// the [SVGElement] interface via script.
  ///
  /// Shorthand properties are expanded. If you set `border-top: 1px solid
  /// black`, the longhand properties (, , and ) are set instead.
  ///
  /// The main difference between [SVGElement.style] property and
  /// `attributeStyleMap` property is that, the `style` property will return a
  /// [CSSStyleDeclaration] object, while the `attributeStyleMap` property will
  /// return a [StylePropertyMap] object.
  ///
  /// Though the property itself is not writable, you could read and write
  /// inline styles through the [StylePropertyMap] object that it returns, just
  /// like through the [CSSStyleDeclaration] object that returns via the `style`
  /// property.
  external StylePropertyMap get attributeStyleMap;
}

extension SVGElementExtension on SVGElement {
  external SVGAnimatedString get className;
}

extension type SVGBoundingBoxOptions._(JSObject _) implements JSObject {
  external factory SVGBoundingBoxOptions({
    bool fill,
    bool stroke,
    bool markers,
    bool clipped,
  });

  external bool get fill;
  external set fill(bool value);
  external bool get stroke;
  external set stroke(bool value);
  external bool get markers;
  external set markers(bool value);
  external bool get clipped;
  external set clipped(bool value);
}

/// The **`SVGGraphicsElement`** interface represents SVG elements whose primary
/// purpose is to directly render graphics into a group.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement).
extension type SVGGraphicsElement._(JSObject _)
    implements SVGElement, JSObject {
  /// The **`SVGGraphicsElement.getBBox()`** method allows us to determine
  /// the coordinates of the smallest rectangle in which the object fits. The
  /// coordinates
  /// returned are with respect to the current SVG space (after the application
  /// of all
  /// geometry attributes on all the elements contained in the target element).
  ///
  /// > **Note:** `getBBox()` must return the actual bounding box at
  /// > the time the method was called—even in case the element has not yet been
  /// > rendered. It
  /// > also does not account for any transformation applied to the element or
  /// > its parents.
  ///
  /// > **Note:** `getBBox` returns different values than
  /// > [Element.getBoundingClientRect], as the
  /// > latter returns value relative to the viewport
  external DOMRect getBBox([SVGBoundingBoxOptions options]);

  /// The `getCTM()` method of the [SVGGraphicsElement] interface represents the
  /// matrix that transforms the current element's coordinate system to its SVG
  /// viewport's coordinate system.
  external DOMMatrix? getCTM();

  /// The `getScreenCTM()` method of the [SVGGraphicsElement] interface
  /// represents the matrix that transforms the current element's coordinate
  /// system to the coordinate system of the SVG viewport for the SVG document
  /// fragment.
  external DOMMatrix? getScreenCTM();

  /// The **`transform`** read-only property of the [SVGGraphicsElement]
  /// interface reflects the computed value of the transform property and its
  /// corresponding `transform` attribute of the given element.
  external SVGAnimatedTransformList get transform;

  /// The **`requiredExtensions`** read-only property of the
  /// [SVGGraphicsElement] interface reflects the `requiredExtensions` attribute
  /// of the given element.
  external SVGStringList get requiredExtensions;

  /// The **`systemLanguage`** read-only property of the [SVGGraphicsElement]
  /// interface reflects the `systemLanguage` attribute of the given element.
  external SVGStringList get systemLanguage;
}

/// The **`SVGNumber`** interface corresponds to the  basic data type.
///
/// An `SVGNumber` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber).
extension type SVGNumber._(JSObject _) implements JSObject {
  /// The **`value`** read-only property of the [SVGNumber] interface represents
  /// the number.
  external double get value;
  external set value(num value);
}

/// The **`SVGLength`** interface correspond to the
/// [\<length>](/en-US/docs/Web/SVG/Content_type#length) basic data type.
///
/// An `SVGLength` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength).
extension type SVGLength._(JSObject _) implements JSObject {
  static const int SVG_LENGTHTYPE_UNKNOWN = 0;

  static const int SVG_LENGTHTYPE_NUMBER = 1;

  static const int SVG_LENGTHTYPE_PERCENTAGE = 2;

  static const int SVG_LENGTHTYPE_EMS = 3;

  static const int SVG_LENGTHTYPE_EXS = 4;

  static const int SVG_LENGTHTYPE_PX = 5;

  static const int SVG_LENGTHTYPE_CM = 6;

  static const int SVG_LENGTHTYPE_MM = 7;

  static const int SVG_LENGTHTYPE_IN = 8;

  static const int SVG_LENGTHTYPE_PT = 9;

  static const int SVG_LENGTHTYPE_PC = 10;

  /// The `newValueSpecifiedUnits()` method of the [SVGLength] interface resets
  /// the value as a number with an associated [SVGLength.unitType], thereby
  /// replacing the values for all of the attributes on the object.
  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );

  /// The `convertToSpecifiedUnits()` method of the [SVGLength] interface allows
  /// you to convert the length's value to the specified unit type.
  ///
  /// This function will:
  ///
  /// - Set the [SVGLength.unitType] property to the given unit type
  /// - Update the [SVGLength.valueInSpecifiedUnits] and
  ///   [SVGLength.valueAsString] properties so the length value is represented
  ///   in the given unit type
  external void convertToSpecifiedUnits(int unitType);

  /// The **`unitType`** property of the [SVGLength] interface that represents
  /// type of the value as specified by one of the `SVG_LENGTHTYPE_*` constants
  /// defined on this interface.
  external int get unitType;

  /// The `value` property of the [SVGLength] interface represents the floating
  /// point value of the [\<length>](/en-US/docs/Web/SVG/Content_type#length) in
  /// user units.
  ///
  /// Setting this attribute will cause [SVGLength.valueInSpecifiedUnits] and
  /// [SVGLength.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get value;
  external set value(num value);

  /// The `valueInSpecifiedUnits` property of the [SVGLength] interface
  /// represents floating point value, in the units expressed by
  /// [SVGLength.unitType].
  ///
  /// Setting this attribute will cause [SVGLength.value] and
  /// [SVGLength.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);

  /// The `valueAsString` property of the [SVGLength] interface represents the
  /// [\<length>](/en-US/docs/Web/SVG/Content_type#length)'s value as a strin\*,
  /// in the units expressed by [SVGLength.unitType].
  ///
  /// Setting this attribute will cause [SVGLength.value],
  /// [SVGLength.valueInSpecifiedUnits], and [SVGLength.unitType] to be updated
  /// automatically to reflect this setting.
  external String get valueAsString;
  external set valueAsString(String value);
}

/// The `SVGAngle` interface is used to represent a value that can be an  or
/// value.
///
/// The `SVGAngle` returned from [SVGAnimatedAngle.animVal] and
/// [SVGAnimatedAngle.baseVal] is read only, but the `SVGAngle` returned from
/// [SVGSVGElement.createSVGAngle] is writable. When designated as read only,
/// attempts to modify the object will result in an exception being thrown.
///
/// An `SVGAngle` object can be associated with a particular element. The
/// associated element is used to determine which element's content attribute to
/// update if the object reflects an attribute. Unless otherwise described, an
/// `SVGAngle` object is not associated with any element.
///
/// Every `SVGAngle` object operates in one of two modes:
///
/// 1. **_Reflect the base value_** of a reflected animatable attribute (being
/// exposed through the [SVGAnimatedAngle.baseVal] member of an
/// [SVGAnimatedAngle]),
/// 2. **_Be detached_,** which is the case for `SVGAngle` objects created with
/// [SVGSVGElement.createSVGAngle].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle).
extension type SVGAngle._(JSObject _) implements JSObject {
  static const int SVG_ANGLETYPE_UNKNOWN = 0;

  static const int SVG_ANGLETYPE_UNSPECIFIED = 1;

  static const int SVG_ANGLETYPE_DEG = 2;

  static const int SVG_ANGLETYPE_RAD = 3;

  static const int SVG_ANGLETYPE_GRAD = 4;

  /// The `newValueSpecifiedUnits()` method of the [SVGAngle] interface sets the
  /// value to a number with an associated [SVGAngle.unitType], thereby
  /// replacing the values for all of the attributes on the object.
  external void newValueSpecifiedUnits(
    int unitType,
    num valueInSpecifiedUnits,
  );

  /// The `convertToSpecifiedUnits()` method of the [SVGAngle] interface allows
  /// you to convert the angle's value to the specified unit type.
  ///
  /// This function will:
  ///
  /// - Set the [SVGAngle.unitType] property to the given unit type
  /// - Update the [SVGAngle.valueInSpecifiedUnits] and [SVGAngle.valueAsString]
  ///   properties so the angle value is represented in the given unit type
  external void convertToSpecifiedUnits(int unitType);

  /// The **`unitType`** property of the [SVGAngle] interface is one of the
  /// [unit type constants](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle#constants)
  /// and represents the units in which this angle's value is expressed.
  external int get unitType;

  /// The `value` property of the [SVGAngle] interface represents the floating
  /// point value of the [`<angle>`](/en-US/docs/Web/SVG/Content_type#angle) in
  /// degrees.
  ///
  /// Setting this attribute will cause [SVGAngle.valueInSpecifiedUnits] and
  /// [SVGAngle.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get value;
  external set value(num value);

  /// The `valueInSpecifiedUnits` property of the [SVGAngle] interface
  /// represents the value of this angle as a number, in the units expressed by
  /// the angle's [SVGAngle.unitType].
  ///
  /// Setting this attribute will cause [SVGAngle.value] and
  /// [SVGAngle.valueAsString] to be updated automatically to reflect this
  /// setting.
  external double get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);

  /// The `valueAsString` property of the [SVGAngle] interface represents the
  /// angle's value as a string, in the units expressed by [SVGAngle.unitType].
  ///
  /// Setting this attribute will cause [SVGAngle.value],
  /// [SVGAngle.valueInSpecifiedUnits], and [SVGAngle.unitType] to be updated
  /// automatically to reflect this setting.
  external String get valueAsString;
  external set valueAsString(String value);
}

/// The **`SVGStringList`** interface defines a list of strings.
///
/// An `SVGStringList` object can be designated as read only, which means that
/// attempts to modify the object will result in an exception being thrown.
///
/// An `SVGStringList` object is indexable and can be accessed like an array.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList).
extension type SVGStringList._(JSObject _) implements JSObject {
  /// The **`clear()`** method of the [SVGStringList] interface clears all
  /// existing items from the list, with the result being an empty list.
  external void clear();

  /// The **`initialize()`** method of the [SVGStringList] interface clears all
  /// existing items from the list and re-initializes the list to hold the
  /// single item specified by the parameter. If the inserted item is already in
  /// a list, it is removed from its previous list before it is inserted into
  /// this list. The inserted item is the item itself and not a copy. The return
  /// value is the item inserted into the list.
  external String initialize(String newItem);

  /// The **`getItem()`** method of the [SVGStringList] interface returns the
  /// specified item from the list. The returned item is the item itself and not
  /// a copy. Any changes made to the item are immediately reflected in the
  /// list. The first item is indexed 0.
  external String getItem(int index);

  /// The **`insertItemBefore()`** method of the [SVGStringList] interface
  /// inserts a new item into the list at the specified position. The first item
  /// is indexed 0. The inserted item is the item itself and not a copy.
  ///
  /// - If the new item is already in a list, it is removed from its previous
  ///   list before it is inserted into this list.
  /// - If the item is already in this list, note that the index of the item to
  ///   insert before is before the removal of the item.
  /// - If the index is equal to 0, then the new item is inserted at the front
  ///   of the list.
  /// - If the index is greater than or equal to the [SVGStringList.length],
  ///   then the new item is appended to the end of the list.
  external String insertItemBefore(
    String newItem,
    int index,
  );

  /// The **`replaceItem()`** method of the [SVGStringList] interface replaces
  /// an existing item in the list with a new item. The inserted item is the
  /// item itself and not a copy.
  ///
  /// - If the new item is already in a list, it is removed from its previous
  ///   list before it is inserted into this list.
  /// - If the item is already in this list, note that the index of the item to
  ///   replace is before the removal of the item.
  external String replaceItem(
    String newItem,
    int index,
  );

  /// The **`removeItem()`** method of the [SVGStringList] interface removes an
  /// existing item at the given index from the list.
  external String removeItem(int index);

  /// The **`appendItem()`** method of the [SVGStringList] interface inserts a
  /// new item at the end of the list. If the given item is already in a list,
  /// it is removed from its previous list before it is inserted into this list.
  /// The inserted item is the item itself and not a copy.
  external String appendItem(String newItem);
  external void operator []=(
    int index,
    String newItem,
  );

  /// The **`length`** property of the [SVGStringList] interface returns the
  /// number of items in the list. It is an alias of
  /// [SVGStringList.numberOfItems] to make SVG lists more
  /// [array-like](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#array-like_objects).
  external int get length;

  /// The **`numberOfItems`** property of the [SVGStringList] interface returns
  /// the number of items in the list. [SVGStringList.length] is an alias of of
  /// it.
  external int get numberOfItems;
}

/// The **`SVGAnimatedLength`** interface represents attributes of type
/// [\<length>](/en-US/docs/Web/SVG/Content_type#length) which can be animated.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength).
extension type SVGAnimatedLength._(JSObject _) implements JSObject {
  /// The **`baseVal`** property of the [SVGAnimatedLength] interface contains
  /// the initial value of an SVG enumeration.
  external SVGLength get baseVal;

  /// The **`animVal`** property of the [SVGAnimatedLength] interface contains
  /// the current value of an SVG enumeration. If there is no animation, it is
  /// the same value as the [SVGAnimatedLength.baseVal].
  external SVGLength get animVal;
}

/// The **`SVGAnimatedString`** interface represents string attributes which can
/// be animated from each SVG declaration. You need to create SVG attribute
/// before doing anything else, everything should be declared inside this.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString).
extension type SVGAnimatedString._(JSObject _) implements JSObject {
  /// BaseVal gets or sets the base value of the given attribute before any
  /// animations are applied. The base value of the given attribute before
  /// applying any animations. Setter throws DOMException.
  external String get baseVal;
  external set baseVal(String value);

  /// The `animVal` read-only property of the [SVGAnimatedString] interface
  /// contains the same value as the [SVGAnimatedString.baseVal] property. If
  /// the given attribute or property is being animated, it contains the current
  /// animated value of the attribute or property. If the given attribute or
  /// property is not currently being animated, then it contains the same value
  /// as `baseVal`.
  external String get animVal;
}

/// The `SVGAnimatedRect` interface is used for attributes of basic [SVGRect]
/// which can be animated.
///
/// ### Interface overview
///
/// <table class="no-markdown">
///   <tbody>
///     <tr>
///       <th scope="row">Also implement</th>
///       <td><em>None</em></td>
///     </tr>
///     <tr>
///       <th scope="row">Methods</th>
///       <td><em>None</em></td>
///     </tr>
///     <tr>
///       <th scope="row">Properties</th>
///       <td>
///         <ul>
///           <li>
/// readonly [SVGRect] <code>baseVal</code>
///           </li>
///           <li>
/// readonly [SVGRect] <code>animVal</code>
///           </li>
///         </ul>
///       </td>
///     </tr>
///     <tr>
///       <th scope="row">Normative document</th>
///       <td>
///         <a
/// href="https://www.w3.org/TR/SVG11/types.html#InterfaceSVGAnimatedRect"
/// >SVG 1.1 (2nd Edition)</a
/// >
///       </td>
///     </tr>
///   </tbody>
/// </table>
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect).
extension type SVGAnimatedRect._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedRect] interface
  /// represents the current non-animated value of the `viewBox` attribute of an
  /// SVG element.
  ///
  /// This property reflects the SVG element's `viewBox` attribute value as a
  /// read-only [DOMRect] object. It provides access to the static rectangle
  /// defined by the `viewBox` attribute, including the `x`, `y`, `width`, and
  /// `height` values.
  external DOMRect get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedRect] interface
  /// represents the current animated value of the `viewBox` attribute of an SVG
  /// element as a read-only [DOMRectReadOnly] object. It provides access to the
  /// rectangle's dynamic state, including the `x`, `y`, `width`, and `height`
  /// values during the animation.
  ///
  /// If no animation is applied, the `animVal` property reflects the SVG
  /// element's `viewBox` attribute value and will be identical to
  /// [SVGAnimatedRect.baseVal].
  external DOMRectReadOnly get animVal;
}

/// The **`SVGSVGElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them. This interface contains
/// also various miscellaneous commonly-used utility methods, such as matrix
/// operations and the ability to control the time of redraw on visual rendering
/// devices.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement).
extension type SVGSVGElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGSVGElement] using the tag 'svg'.
  SVGSVGElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'svg',
        );

  external NodeList getIntersectionList(
    DOMRectReadOnly rect,
    SVGElement? referenceElement,
  );
  external NodeList getEnclosureList(
    DOMRectReadOnly rect,
    SVGElement? referenceElement,
  );

  /// The `checkIntersection()` method of the [SVGSVGElement] interface checks
  /// if the rendered content of the given element intersects the supplied
  /// rectangle.
  ///
  /// Each candidate graphics element is to be considered a match only if the
  /// same graphics element can be a target of pointer events as defined in
  /// processing.
  external bool checkIntersection(
    SVGElement element,
    DOMRectReadOnly rect,
  );

  /// The `checkEnclosure()` method of the [SVGSVGElement] interface checks if
  /// the rendered content of the given element is entirely contained within the
  /// supplied rectangle.
  ///
  /// Each candidate graphics element is to be considered a match only if the
  /// same graphics element can be a target of pointer events as defined in
  /// processing.
  external bool checkEnclosure(
    SVGElement element,
    DOMRectReadOnly rect,
  );

  /// The `deselectAll()` method of the [SVGSVGElement] interface unselects any
  /// selected objects, including any selections of text strings and type-in
  /// bars.
  external void deselectAll();

  /// The `createSVGNumber()` method of the [SVGSVGElement] interface creates an
  /// [SVGNumber] object outside of any document trees.
  external SVGNumber createSVGNumber();

  /// The `createSVGLength()` method of the [SVGSVGElement] interface creates an
  /// [SVGLength] object outside of any document trees.
  external SVGLength createSVGLength();

  /// The `createSVGAngle()` method of the [SVGSVGElement] interface creates an
  /// [SVGAngle] object outside of any document trees.
  external SVGAngle createSVGAngle();

  /// The `createSVGPoint()` method of the [SVGSVGElement] interface creates an
  /// [SVGPoint] object outside of any document trees.
  external DOMPoint createSVGPoint();

  /// The `createSVGMatrix()` method of the [SVGSVGElement] interface creates a
  /// [DOMMatrix] object outside of any document trees.
  external DOMMatrix createSVGMatrix();

  /// The `createSVGRect()` method of the [SVGSVGElement] interface creates an
  /// [DOMRect] object outside of any document trees.
  external DOMRect createSVGRect();

  /// The `createSVGTransform()` method of the [SVGSVGElement] interface creates
  /// an [SVGTransform] object outside of any document trees.
  external SVGTransform createSVGTransform();

  /// The `createSVGTransformFromMatrix()` method of the [SVGSVGElement]
  /// interface creates an [SVGTransform] object outside of any document trees,
  /// based on the given [DOMMatrix] object.
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);

  /// The `getElementById()` method of the [SVGSVGElement] interface searches
  /// the SVG document fragment (i.e., the search is restricted to a subset of
  /// the document tree) for an [Element] whose `id` property matches the
  /// specified string.
  external Element getElementById(String elementId);
  external int suspendRedraw(int maxWaitMilliseconds);
  external void unsuspendRedraw(int suspendHandleID);
  external void unsuspendRedrawAll();
  external void forceRedraw();

  /// The `pauseAnimations()` method of the [SVGSVGElement] interface suspends
  /// (i.e., pauses) all currently running animations that are defined within
  /// the SVG document fragment corresponding to this  element, causing the
  /// animation clock corresponding to this document fragment to stand still
  /// until it is unpaused.
  external void pauseAnimations();

  /// The `unpauseAnimations()` method of the [SVGSVGElement] interface resumes
  /// (i.e., unpauses) currently running animations that are defined within the
  /// SVG document fragment, causing the animation clock to continue from the
  /// time at which it was suspended.
  external void unpauseAnimations();

  /// The `animationsPaused()` method of the [SVGSVGElement] interface checks
  /// whether the animations in the SVG document fragment are currently paused.
  external bool animationsPaused();

  /// The `getCurrentTime()` method of the [SVGSVGElement] interface returns the
  /// current time in seconds relative to the start time for the current SVG
  /// document fragment.
  ///
  /// If `getCurrentTime()` is called before the document timeline has begun
  /// (for example, by script running in a  element before the document's
  /// `SVGLoad` event is dispatched), then `0` is returned.
  external double getCurrentTime();

  /// The `setCurrentTime()` method of the [SVGSVGElement] interface adjusts the
  /// clock for this SVG document fragment, establishing a new current time.
  ///
  /// If `setCurrentTime()` is called before the document timeline has begun
  /// (for example, by script running in a  element before the document's
  /// `SVGLoad` event is dispatched), then the value of seconds in the last
  /// invocation of the method gives the time that the document will seek to
  /// once the document timeline has begun.
  external void setCurrentTime(num seconds);

  /// The **`x`** read-only property of the [SVGSVGElement] interface describes
  /// the horizontal coordinate of the position of that SVG as an
  /// [SVGAnimatedLength]. When an  is nested within another `<svg>`, the
  /// horizontal coordinate is a length in the user coordinate system that is
  /// the given distance from the origin of the user coordinate system along the
  /// x-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `x` geometric attribute. The default value is
  /// `0`. The `x` attribute has no effect on outermost `<svg>` elements; only
  /// one nested ones. The CSS `x` property takes precedence over the `<svg>`
  /// element's `x` attribute, so the value may not reflect the element's
  /// appearance.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGSVGElement] interface describes
  /// the vertical coordinate of the position of that SVG as an
  /// [SVGAnimatedLength]. When an  is nested within another `<svg>`, the
  /// vertical coordinate is a length in the user coordinate system that is the
  /// given distance from the origin of the user coordinate system along the
  /// y-axis. Its syntax is the same as that for
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length).
  ///
  /// It reflects the  element's `y` geometric attribute. The default value is
  /// `0`. The `y` attribute has no effect on outermost `<svg>` elements; only
  /// on nested ones. The CSS `y` property takes precedence over the `<svg>`
  /// element's `y` attribute, so the value may not reflect the element's
  /// appearance.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGSVGElement] interface
  /// describes the horizontal size of element as an [SVGAnimatedLength]. It
  /// reflects the  element's `width` attribute, which may not be the SVG's
  /// rendered width.
  ///
  /// The CSS `width` property takes precedence over the `<svg>` element's
  /// `width` attribute, so the value may not reflect the element's appearance.
  /// If both the `viewBox` and `width` attributes are omitted, the `width`
  /// property reflects that actual width.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGSVGElement] interface
  /// describes the vertical size of element as an [SVGAnimatedLength]. It
  /// reflects the  element's `height` attribute, which may not be the SVG's
  /// rendered height.
  ///
  /// The CSS `height` property takes precedence over the `<svg>` element's
  /// `height` attribute, so the value may not reflect the element's appearance.
  /// If both the `viewBox` and `height` attributes are omitted, the `height`
  /// property reflects that actual height.
  external SVGAnimatedLength get height;

  /// The **`currentScale`** property of the [SVGSVGElement] interface reflects
  /// the current scale factor relative to the initial view to take into account
  /// user magnification and panning operations on the outermost  element.
  ///
  /// DOM attributes `currentScale` and `currentTranslate` are equivalent to the
  /// 2×3 matrix `[a b c d e f] = [currentScale 0 0 currentScale
  /// currentTranslate.x currentTranslate.y]`. If "magnification" is enabled
  /// (i.e., `zoomAndPan="magnify"`), then the effect is as if an extra
  /// transformation were placed at the outermost level on the SVG document
  /// fragment (i.e., outside the outermost  element).
  ///
  /// If the  element is not at the outermost level, then `currentScale` is
  /// always `1` and setting it has no effect.
  external double get currentScale;
  external set currentScale(num value);

  /// The **`currentTranslate`** read-only property of the [SVGSVGElement]
  /// interface reflects the translation factor that takes into account user
  /// "magnification" corresponding to an outermost  element.
  ///
  /// If the  element is not at the outermost level, then `currentTranslate` is
  /// always `{ x: 0, y: 0 }` and is read-only. Otherwise, it is writable.
  external DOMPointReadOnly get currentTranslate;

  /// The **`viewBox`** read-only property of the [SVGSVGElement] interface
  /// reflects the  element's `viewBox` attribute as an [SVGAnimatedRect].
  ///
  /// The property describes the `<svg>` element's `<viewBox>` attribute, which
  /// is used to defined the x-coordinate, y-coordinate, width, and height of an
  /// `<svg>` element. The [SVGAnimatedRect.baseVal] and
  /// [SVGAnimatedRect.animVal] properties are both [SVGRect] objects, or `null`
  /// if the `viewBox` is not defined. These objects' components my differ from
  /// the [SVGSVGElement.x], [SVGSVGElement.y], [SVGSVGElement.width] and
  /// [SVGSVGElement.height] properties, as the `x`, `y`, `width`, and `height`
  /// attributes take precedence over the `viewBox` attribute.
  ///
  /// For non-nested SVG elements, the values of the CSS `x`, `y`, `width`, and
  /// `height` properties take precedence over any element attributes, so the
  /// values defined by the `viewBox` may not be reflected in the element's
  /// appearance.
  external SVGAnimatedRect get viewBox;

  /// The **`preserveAspectRatio`** read-only property of the [SVGSVGElement]
  /// interface reflects the `preserveAspectRatio` attribute of the given
  /// element. It defines how the SVG element's content should be scaled to fit
  /// the given space, preserving its aspect ratio.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
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
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform).
extension type SVGTransform._(JSObject _) implements JSObject {
  static const int SVG_TRANSFORM_UNKNOWN = 0;

  static const int SVG_TRANSFORM_MATRIX = 1;

  static const int SVG_TRANSFORM_TRANSLATE = 2;

  static const int SVG_TRANSFORM_SCALE = 3;

  static const int SVG_TRANSFORM_ROTATE = 4;

  static const int SVG_TRANSFORM_SKEWX = 5;

  static const int SVG_TRANSFORM_SKEWY = 6;

  /// The `setMatrix()` method of the [SVGTransform] interface sets the
  /// transform type to `SVG_TRANSFORM_MATRIX`, with parameter `matrix` defining
  /// the new transformation.
  ///
  /// Note that the values from the parameter `matrix` are copied, meaning
  /// changes to the `matrix` object after calling this method will not affect
  /// the transformation.
  external void setMatrix([DOMMatrix2DInit matrix]);

  /// The `setTranslate()` method of the [SVGTransform] interface sets the
  /// transform type to `SVG_TRANSFORM_TRANSLATE`, with parameters `tx` and `ty`
  /// defining the translation amounts.
  external void setTranslate(
    num tx,
    num ty,
  );

  /// The `setScale()` method of the [SVGTransform] interface sets the transform
  /// type to `SVG_TRANSFORM_SCALE`, with parameters `sx` and `sy` defining the
  /// scale amounts.
  external void setScale(
    num sx,
    num sy,
  );

  /// The `setRotate()` method of the [SVGTransform] interface sets the
  /// transform type to `SVG_TRANSFORM_ROTATE`, with parameter `angle` defining
  /// the rotation angle and parameters `cx` and `cy` defining the optional
  /// center of rotation.
  external void setRotate(
    num angle,
    num cx,
    num cy,
  );

  /// The `setSkewX()` method of the [SVGTransform] interface sets the transform
  /// type to `SVG_TRANSFORM_SKEWX`, with parameter `angle` defining the amount
  /// of skew along the X-axis.
  external void setSkewX(num angle);

  /// The `setSkewY()` method of the [SVGTransform] interface sets the transform
  /// type to `SVG_TRANSFORM_SKEWY`, with parameter `angle` defining the amount
  /// of skew along the Y-axis.
  external void setSkewY(num angle);

  /// The **`type`** read-only property of the [SVGTransform] interface
  /// represents the `type` of transformation applied, specified by one of the
  /// `SVG_TRANSFORM_*` constants defined on this interface.
  external int get type;

  /// The **`matrix`** read-only property of the [SVGTransform] interface
  /// represents the transformation matrix that corresponds to the
  /// transformation `type`.
  ///
  /// In case the `matrix` object is changed directly (i.e., without using the
  /// methods on the `SVGTransform` interface itself) then the `type` of the
  /// `SVGTransform` changes to `SVG_TRANSFORM_MATRIX`.
  ///
  /// - For `SVG_TRANSFORM_MATRIX`, the matrix contains the a, b, c, d, e, f
  ///   values supplied by the user.
  ///
  /// - For `SVG_TRANSFORM_TRANSLATE`, e and f represent the translation amounts
  ///   (a=1, b=0, c=0 and d=1).
  ///
  /// - For `SVG_TRANSFORM_SCALE`, a and d represent the scale amounts (b=0,
  ///   c=0, e=0 and f=0).
  ///
  /// - For `SVG_TRANSFORM_SKEWX` and `SVG_TRANSFORM_SKEWY`, a, b, c and d
  ///   represent the matrix which will result in the given skew (e=0 and f=0).
  ///
  /// - For `SVG_TRANSFORM_ROTATE`, a, b, c, d, e and f together represent the
  ///   matrix which will result in the given rotation. When the rotation is
  ///   around the center point (0, 0), e and f will be zero.
  external DOMMatrix get matrix;

  /// The **`angle`** read-only property of the [SVGTransform] interface
  /// represents the angle of the transformation in degrees.
  ///
  /// For `SVG_TRANSFORM_ROTATE`, `SVG_TRANSFORM_SKEWX`, and
  /// `SVG_TRANSFORM_SKEWY`, `angle` reflects the transformation's rotation or
  /// skewing angle.
  ///
  /// For `SVG_TRANSFORM_MATRIX`, `SVG_TRANSFORM_TRANSLATE` and
  /// `SVG_TRANSFORM_SCALE`, `angle` will be zero.
  external double get angle;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList).
extension type SVGTransformList._(JSObject _) implements JSObject {
  /// The `clear()` method of the [SVGTransformList] interface clears all
  /// existing current items from the list, with the result being an empty list.
  external void clear();

  /// The `initialize()` method of the [SVGTransformList] interface clears all
  /// existing current items from the list and re-initializes the list to hold
  /// the single item specified by the parameter.
  ///
  /// If the inserted item is already in a list, it is removed from its previous
  /// list before it is inserted into this list. The inserted item is the item
  /// itself and not a copy.
  external SVGTransform initialize(SVGTransform newItem);

  /// The `getItem()` method of the [SVGTransformList] interface returns the
  /// specified item from the list.
  ///
  /// The returned item is the item itself and not a copy. Any changes made to
  /// the item are immediately reflected in the list.
  ///
  /// The first item is indexed at `0`.
  external SVGTransform getItem(int index);

  /// The `insertItemBefore()` method of the [SVGTransformList] interface
  /// inserts a new item into the list at the specified position.
  ///
  /// The first item is indexed at `0`. The inserted item is the item itself and
  /// not a copy.
  ///
  /// - If `newItem` is already in a list, it is removed from its previous list
  ///   before it is inserted into this list.
  ///
  /// - If the item is already in this list, note that the `index` of the item
  ///   to insert before is before the removal of the item.
  ///
  /// - If the `index` is equal to `0`, then the new item is inserted at the
  ///   front of the list.
  ///
  /// - If the `index` is greater than or equal to
  ///   [SVGTransformList.numberOfItems], then the new item is appended to the
  ///   end of the list.
  external SVGTransform insertItemBefore(
    SVGTransform newItem,
    int index,
  );

  /// The `replaceItem()` method of the [SVGTransformList] interface replaces an
  /// existing item in the list with a new item.
  ///
  /// The inserted item is the item itself and not a copy.
  ///
  /// - If `newItem` is already in a list, it is removed from its previous list
  ///   before it is inserted into this list.
  ///
  /// - If the item is already in this list, note that the `index` of the item
  ///   to replace is before the removal of the item.
  external SVGTransform replaceItem(
    SVGTransform newItem,
    int index,
  );

  /// The `removeItem()` method of the [SVGTransformList] interface removes an
  /// existing item from the list.
  external SVGTransform removeItem(int index);

  /// The `appendItem()` method of the [SVGTransformList] interface inserts a
  /// new item at the end of the list.
  ///
  /// The inserted item is the item itself and not a copy.
  ///
  /// - If `newItem` is already in a list, it is removed from its previous list
  ///   before it is inserted into this list.
  external SVGTransform appendItem(SVGTransform newItem);
  external void operator []=(
    int index,
    SVGTransform newItem,
  );

  /// The `createSVGTransformFromMatrix()` method of the [SVGTransformList]
  /// interface creates an [SVGTransform] object which is initialized to a
  /// transform of type `SVG_TRANSFORM_MATRIX` and whose values are the given
  /// matrix.
  ///
  /// The values from the parameter matrix are copied; the matrix parameter is
  /// not adopted as `SVGTransform::matrix`.
  external SVGTransform createSVGTransformFromMatrix([DOMMatrix2DInit matrix]);

  /// The `consolidate()` method of the [SVGTransformList] interface
  /// consolidates the list of separate [SVGTransform] objects by multiplying
  /// the equivalent transformation matrices together to result in a list
  /// consisting of a single `SVGTransform` object of type
  /// `SVG_TRANSFORM_MATRIX`.
  ///
  /// The consolidation operation creates a new `SVGTransform` object as the
  /// first and only item in the list.
  ///
  /// The returned item is the item itself and not a copy. Any changes made to
  /// the item are immediately reflected in the list.
  external SVGTransform? consolidate();

  /// The **`length`** read-only property of the [SVGTransformList] interface
  /// represents the number of items in the list.
  external int get length;

  /// The **`numberOfItems`** read-only property of the [SVGTransformList]
  /// interface represents the number of items in the list.
  external int get numberOfItems;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList).
extension type SVGAnimatedTransformList._(JSObject _) implements JSObject {
  /// The **`baseVal`** read-only property of the [SVGAnimatedTransformList]
  /// interface represents the non-animated value of the `transform` attribute
  /// of an SVG element.
  ///
  /// This property reflects the SVG element's `transform`, the  or  element's
  /// `gradientTransform` attribute, or the  element's `patternTransform`
  /// attribute value as a readonly [SVGTransformList], providing access to a
  /// static [SVGTransform] for each transform function set on the SVG element.
  external SVGTransformList get baseVal;

  /// The **`animVal`** read-only property of the [SVGAnimatedTransformList]
  /// interface represents the animated value of the `transform` attribute of an
  /// SVG element.
  ///
  /// This property reflects the SVG element's `transform`, the  or  element's
  /// `gradientTransform` attribute, or the  element's `patternTransform`
  /// attribute as a readonly [SVGTransformList], providing access to the
  /// dynamically updated [SVGTransform] for each transform function during an
  /// animation. If no animation is active, this property will return the same
  /// value as `baseVal`.
  external SVGTransformList get animVal;
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio).
extension type SVGPreserveAspectRatio._(JSObject _) implements JSObject {
  static const int SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;

  static const int SVG_PRESERVEASPECTRATIO_NONE = 1;

  static const int SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;

  static const int SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;

  static const int SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;

  static const int SVG_PRESERVEASPECTRATIO_XMINYMID = 5;

  static const int SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;

  static const int SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;

  static const int SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;

  static const int SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;

  static const int SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;

  static const int SVG_MEETORSLICE_UNKNOWN = 0;

  static const int SVG_MEETORSLICE_MEET = 1;

  static const int SVG_MEETORSLICE_SLICE = 2;

  /// The **`align`** read-only property of the [SVGPreserveAspectRatio]
  /// interface reflects the type of the alignment value as specified by one of
  /// the `SVG_PRESERVEASPECTRATIO_*` constants defined on this interface.
  external int get align;
  external set align(int value);

  /// The **`meetOrSlice`** read-only property of the [SVGPreserveAspectRatio]
  /// interface reflects the type of the meet-or-slice value as specified by one
  /// of the `SVG_MEETORSLICE_*` constants defined on this interface.
  external int get meetOrSlice;
  external set meetOrSlice(int value);
}

///
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio).
extension type SVGAnimatedPreserveAspectRatio._(JSObject _)
    implements JSObject {
  /// The **`baseVal`** read-only property of the
  /// [SVGAnimatedPreserveAspectRatio] interface represents the base
  /// (non-animated) value of the `preserveAspectRatio` attribute of an SVG
  /// element.
  external SVGPreserveAspectRatio get baseVal;

  /// The **`animVal`** read-only property of the
  /// [SVGAnimatedPreserveAspectRatio] interface represents the value of the
  /// `preserveAspectRatio` attribute of an SVG element after any animations or
  /// transformations are applied.
  external SVGPreserveAspectRatio get animVal;
}

/// The **`SVGImageElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement).
extension type SVGImageElement._(JSObject _)
    implements SVGGraphicsElement, JSObject {
  /// Creates an [SVGImageElement] using the tag 'image'.
  SVGImageElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'image',
        );

  /// The **`x`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `x` attribute of the given
  /// element.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `y` attribute of the given
  /// element.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `width` attribute of the given
  /// element.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the
  /// [SVGImageElement] interface returns an [SVGAnimatedLength]
  /// corresponding to the `height` attribute of the given
  /// element.
  external SVGAnimatedLength get height;

  /// The **`preserveAspectRatio`** read-only
  /// property of the [SVGImageElement] interface returns an
  /// [SVGAnimatedPreserveAspectRatio] corresponding to the
  /// `preserveAspectRatio` attribute of the given
  /// element.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The **`href`** read-only property of the [SVGImageElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}

/// The **`SVGScriptElement`** interface corresponds to the SVG  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement).
extension type SVGScriptElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGScriptElement] using the tag 'script'.
  SVGScriptElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'script',
        );

  /// The **`type`** read-only property of the [SVGScriptElement] interface
  /// reflects the `type` attribute of the given  element.
  external String get type;
  external set type(String value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);

  /// The **`href`** read-only property of the [SVGScriptElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}
