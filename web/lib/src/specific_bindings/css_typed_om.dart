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

typedef CSSNumberish = JSAny;
typedef CSSNumericBaseType = String;
typedef CSSMathOperator = String;

/// The **`CSSStyleValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// is the base class of all CSS values accessible through the Typed OM API. An
/// instance of this class may be used anywhere a string is expected.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleValue).
extension type CSSStyleValue._(JSObject _) implements JSObject {
  /// The **`parse()`** static method of the [CSSStyleValue]
  /// interface sets a specific CSS property to the specified values and returns
  /// the first
  /// value as a [CSSStyleValue] object.
  external static CSSStyleValue parse(
    String property,
    String cssText,
  );

  /// The **`parseAll()`** static method of the [CSSStyleValue]
  /// interface sets all occurrences of a specific CSS property to the specified
  /// value and
  /// returns an array of [CSSStyleValue] objects, each containing one of the
  /// supplied values.
  external static JSArray<CSSStyleValue> parseAll(
    String property,
    String cssText,
  );
}

/// The **`StylePropertyMapReadOnly`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// provides a read-only representation of a CSS declaration block that is an
/// alternative to [CSSStyleDeclaration]. Retrieve an instance of this interface
/// using [Element.computedStyleMap].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StylePropertyMapReadOnly).
extension type StylePropertyMapReadOnly._(JSObject _) implements JSObject {
  /// The **`get()`** method of the
  /// [StylePropertyMapReadOnly] interface returns a [CSSStyleValue]
  /// object for the first value of the specified property.
  external CSSStyleValue? get(String property);

  /// The **`getAll()`** method of the
  /// [StylePropertyMapReadOnly] interface returns an array of
  /// [CSSStyleValue] objects containing the values for the provided property.
  external JSArray<CSSStyleValue> getAll(String property);

  /// The **`has()`** method of the
  /// [StylePropertyMapReadOnly] interface indicates whether the specified
  /// property is in the `StylePropertyMapReadOnly` object.
  external bool has(String property);

  /// The **`size`** read-only property of the
  /// [StylePropertyMapReadOnly] interface returns an unsigned long integer
  /// containing the size of the `StylePropertyMapReadOnly` object.
  external int get size;
}

/// The **`StylePropertyMap`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// provides a representation of a CSS declaration block that is an alternative
/// to [CSSStyleDeclaration].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StylePropertyMap).
extension type StylePropertyMap._(JSObject _)
    implements StylePropertyMapReadOnly, JSObject {
  /// The **`set()`** method of the [StylePropertyMap]
  /// interface changes the CSS declaration with the given property.
  external void set(
    String property, [
    JSAny value1,
    JSAny value2,
    JSAny value3,
    JSAny value4,
  ]);

  /// The **`append()`** method of the
  /// [StylePropertyMap] interface adds the passed CSS value to the
  /// `StylePropertyMap` with the given property.
  external void append(
    String property, [
    JSAny value1,
    JSAny value2,
    JSAny value3,
    JSAny value4,
  ]);

  /// The **`delete()`** method of the
  /// [StylePropertyMap] interface removes the CSS declaration with the given
  /// property.
  external void delete(String property);

  /// The **`clear()`** method of the [StylePropertyMap]
  /// interface removes all declarations in the `StylePropertyMap`.
  external void clear();
}

/// The **`CSSKeywordValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// creates an object to represent CSS keywords and other identifiers.
///
/// The interface instance name is a  meaning that when used anywhere a string
/// is expected it will return the value of `CSSKeyword.value`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSKeywordValue).
extension type CSSKeywordValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  external factory CSSKeywordValue(String value);

  /// The **`value`** property of the
  /// [CSSKeywordValue] interface returns or sets the value of the
  /// `CSSKeywordValue`.
  external String get value;
  external set value(String value);
}
extension type CSSNumericType._(JSObject _) implements JSObject {
  external factory CSSNumericType({
    int length,
    int angle,
    int time,
    int frequency,
    int resolution,
    int flex,
    int percent,
    CSSNumericBaseType percentHint,
  });

  external int get length;
  external set length(int value);
  external int get angle;
  external set angle(int value);
  external int get time;
  external set time(int value);
  external int get frequency;
  external set frequency(int value);
  external int get resolution;
  external set resolution(int value);
  external int get flex;
  external set flex(int value);
  external int get percent;
  external set percent(int value);
  external CSSNumericBaseType get percentHint;
  external set percentHint(CSSNumericBaseType value);
}

/// The **`CSSNumericValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// represents operations that all numeric values can perform.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSNumericValue).
extension type CSSNumericValue._(JSObject _)
    implements CSSStyleValue, JSObject {
  /// The **`parse()`** static method of the
  /// [CSSNumericValue] interface converts a value string into an object whose
  /// members are value and the units.
  external static CSSNumericValue parse(String cssText);

  /// The **`add()`** method of the
  /// [CSSNumericValue] interface adds a supplied number to the
  /// `CSSNumericValue`.
  external CSSNumericValue add([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`sub()`** method of the
  /// [CSSNumericValue] interface subtracts a supplied number from the
  /// `CSSNumericValue`.
  external CSSNumericValue sub([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`mul()`** method of the
  /// [CSSNumericValue] interface multiplies the `CSSNumericValue` by
  /// the supplied value.
  external CSSNumericValue mul([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`div()`** method of the
  /// [CSSNumericValue] interface divides the `CSSNumericValue` by the
  /// supplied value.
  external CSSNumericValue div([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`min()`** method of the
  /// [CSSNumericValue] interface returns the lowest value from among those
  /// values passed. The passed values must be of the same type.
  external CSSNumericValue min([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`max()`** method of the
  /// [CSSNumericValue] interface returns the highest value from among the
  /// values
  /// passed. The passed values must be of the same type.
  external CSSNumericValue max([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`equals()`** method of the
  /// [CSSNumericValue] interface returns a boolean indicating whether the
  /// passed
  /// value are strictly equal. To return a value of `true`, all passed values
  /// must
  /// be of the same type and value and must be in the same order. This allows
  /// structural
  /// equality to be tested quickly.
  external bool equals([
    CSSNumberish value1,
    CSSNumberish value2,
    CSSNumberish value3,
    CSSNumberish value4,
  ]);

  /// The **`to()`** method of the
  /// [CSSNumericValue] interface converts a numeric value from one unit to
  /// another.
  external CSSUnitValue to(String unit);

  /// The **`toSum()`** method of the
  /// [CSSNumericValue] interface converts the object's value to a
  /// [CSSMathSum] object to values of the specified unit.
  external CSSMathSum toSum([
    String unit1,
    String unit2,
    String unit3,
    String unit4,
  ]);

  /// The **`type()`** method of the
  /// [CSSNumericValue] interface returns the type of
  /// `CSSNumericValue`, one of `angle`, `flex`,
  /// `frequency`, `length`, `resolution`,
  /// `percent`, `percentHint`, or `time`.
  external CSSNumericType type();
}

/// The **`CSSUnitValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model#css_typed_object_model)
/// represents values that contain a single unit type. For example, "42px" would
/// be represented by a `CSSNumericValue`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSUnitValue).
extension type CSSUnitValue._(JSObject _) implements CSSNumericValue, JSObject {
  external factory CSSUnitValue(
    num value,
    String unit,
  );

  /// The **`CSSUnitValue.value`** property of the
  /// [CSSUnitValue] interface returns a double indicating the number of units.
  external double get value;
  external set value(num value);

  /// The **`CSSUnitValue.unit`** read-only property
  /// of the [CSSUnitValue] interface returns a string
  /// indicating the type of unit.
  external String get unit;
}

/// The **`CSSMathValue`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// a base class for classes representing complex numeric values.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSMathValue).
extension type CSSMathValue._(JSObject _) implements CSSNumericValue, JSObject {
  /// The **`CSSMathValue.operator`** read-only
  /// property of the [CSSMathValue] interface indicates the operator that the
  /// current subtype represents. For example, if the current `CSSMathValue`
  /// subtype is `CSSMathSum`, this property will return the string
  /// `"sum"`.
  external CSSMathOperator get operator;
}

/// The **`CSSMathSum`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// represents the result obtained by calling [CSSNumericValue.add],
/// [CSSNumericValue.sub], or [CSSNumericValue.toSum] on [CSSNumericValue].
///
/// A CSSMathSum is the object type returned when the
/// [`StylePropertyMapReadOnly.get()`](https://developer.mozilla.org/en-US/docs/Web/API/StylePropertyMapReadOnly/get)
/// method is used on a CSS property whose value is created with a
/// [`calc()`](https://developer.mozilla.org/en-US/docs/Web/CSS/calc) function.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSMathSum).
extension type CSSMathSum._(JSObject _) implements CSSMathValue, JSObject {
  /// The **`CSSMathSum.values`** read-only property
  /// of the [CSSMathSum] interface returns a [CSSNumericArray]
  /// object which contains one or more [CSSNumericValue] objects.
  external CSSNumericArray get values;
}

/// The **`CSSNumericArray`** interface of the
/// [CSS Typed Object Model API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
/// contains a list of [CSSNumericValue] objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSNumericArray).
extension type CSSNumericArray._(JSObject _) implements JSObject {
  external CSSNumericValue operator [](int index);

  /// The read-only **`length`** property of the
  /// [CSSNumericArray] interface returns the number of
  /// [CSSNumericValue] objects in the list.
  external int get length;
}
