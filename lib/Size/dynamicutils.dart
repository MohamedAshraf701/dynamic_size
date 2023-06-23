/// A library for dynamic sizing and navigation in Flutter.
///
/// The `dynamicutils` library provides utilities for dynamically sizing widgets based on the device's screen dimensions.
/// It also includes navigation functions for managing screen transitions.
///
/// Usage:
/// 1. Import the `dynamicutils` library.
/// 2. Create an instance of the `DynamicSize` class by providing the initial height and width values.
/// 3. Use the `height` and `width` methods to dynamically calculate the desired height and width based on the provided values.
/// 4. Use the `HeightSpace` and `WidthSpace` methods to create `SizedBox` widgets with dynamic heights and widths.
/// 5. Use the `dContainer` method to create a `Container` widget with dynamic dimensions and other customizable properties.
/// 6. Use the `Pop`, `NewScreen`, and `ReplaceScreen` functions for navigation purposes.
///
/// Note: This library requires the `flutter` and `material` packages.
// ignore_for_file: deprecated_member_use

library dynamicutils;

import 'package:flutter/material.dart';

/// A class for dynamically sizing widgets based on screen dimensions.
///
/// The `DynamicSize` class provides methods for calculating the desired height and width
/// based on the provided initial height and width values. It also includes methods for creating
/// `SizedBox` widgets with dynamic heights and widths, as well as a method for creating a `Container`
/// widget with dynamic dimensions and other customizable properties.
class DynamicSize {
  final double _height;
  final double _width;

  /// Constructs a new `DynamicSize` object with the provided initial height and width values.
  ///
  /// The `DynamicSize` object allows for dynamic sizing calculations based on the screen dimensions.
  ///
  /// - `height`: The initial height value used for dynamic sizing calculations.
  /// - `width`: The initial width value used for dynamic sizing calculations.
  DynamicSize(this._height, this._width);

  /// Calculates the dynamic height based on the provided value and the screen dimensions.
  ///
  /// The `height` method calculates the dynamic height based on the provided value and the screen dimensions.
  ///
  /// - `value`: The value representing a percentage of the initial height value.
  /// - Returns: The calculated dynamic height value.
  double height(double value) {
    return MediaQueryData.fromView(WidgetsBinding.instance.window).size.height *
        ((value * 100 / _height) / 100);
  }

  /// Calculates the dynamic width based on the provided value and the screen dimensions.
  ///
  /// The `width` method calculates the dynamic width based on the provided value and the screen dimensions.
  ///
  /// - `value`: The value representing a percentage of the initial width value.
  /// - Returns: The calculated dynamic width value.
  double width(double value) {
    return MediaQueryData.fromView(WidgetsBinding.instance.window).size.width *
        ((value * 100 / _width) / 100);
  }

  /// Creates a `SizedBox` widget with a dynamic height based on the provided value.
  ///
  /// The `heightSpace` method creates a `SizedBox` widget with a dynamic height based on the provided value.
  ///
  /// - `value`: The value representing a percentage of the initial height value.
  /// - Returns: A `SizedBox` widget with the calculated dynamic height.
  Widget heightSpace(double value) {
    return SizedBox(
      height: height(value),
    );
  }

  /// Creates a `SizedBox` widget with a dynamic width based on the provided value.
  ///
  /// The `widthSpace` method creates a `SizedBox` widget with a dynamic width based on the provided value.
  ///
  /// - `value`: The value representing a percentage of the initial width value.
  /// - Returns: A `SizedBox` widget with the calculated dynamic width.
  Widget widthSpace(double value) {
    return SizedBox(
      width: width(value),
    );
  }

  /// Creates a `Container` widget with dynamic dimensions and other customizable properties.
  ///
  /// The `dContainer` method creates a `Container` widget with dynamic dimensions based on the provided width and height values.
  /// Other properties like alignment, padding, color, decoration, margin, transform, etc., can also be customized.
  ///
  /// - `alignment`: The alignment of the child within the container. (Optional)
  /// - `padding`: The padding applied to the container's content. (Optional)
  /// - `color`: The background color of the container. (Optional)
  /// - `decoration`: The decoration applied to the container. (Optional)
  /// - `foregroundDecoration`: The decoration applied to the container's foreground. (Optional)
  /// - `width`: The dynamic width value for the container. (Optional)
  /// - `height`: The dynamic height value for the container. (Optional)
  /// - `constraints`: The additional constraints applied to the container. (Optional)
  /// - `margin`: The margin applied around the container. (Optional)
  /// - `transform`: The transformation matrix applied to the container. (Optional)
  /// - `transformAlignment`: The alignment of the transform within the container. (Optional)
  /// - `child`: The child widget placed inside the container. (Optional)
  /// - `clipBehavior`: The clipping behavior applied to the container. (Default: Clip.none)
  ///
  /// - Returns: A `Container` widget with dynamic dimensions and customizable properties.
  Widget dContainer({
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip clipBehavior = Clip.none,
  }) {
    return Container(
      decoration: decoration,
      color: color,
      alignment: alignment,
      margin: margin,
      padding: padding,
      clipBehavior: clipBehavior,
      constraints: constraints,
      foregroundDecoration: foregroundDecoration,
      transform: transform,
      transformAlignment: transformAlignment,
      height: height != null ? this.height(height) : height,
      width: width != null ? this.width(width) : width,
      child: child,
    );
  }
}

/// Navigates back to the previous screen.
///
/// The `Pop` function checks if there is a previous screen in the navigation stack.
/// If there is, it pops the current screen and navigates back to the previous screen.
/// If there isn't, it does nothing.
///
/// - `context`: The context of the current screen.
void pop(BuildContext context) {
  if (Navigator.canPop(context)) Navigator.pop(context);
}

/// Navigates to a new screen.
///
/// The `NewScreen` function navigates to a new screen specified by the provided `Screen` function.
///
/// - `context`: The context of the current screen.
/// - `Screen`: The function that returns the widget representing the new screen.
void newScreen(BuildContext context, Function() screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen()));
}

/// Replaces the current screen with a new screen.
///
/// The `ReplaceScreen` function replaces the current screen with a new screen specified by the provided `Screen` function.
///
/// - `context`: The context of the current screen.
/// - `Screen`: The function that returns the widget representing the new screen.
void replaceScreen(BuildContext context, Function() screen) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => screen()));
}
