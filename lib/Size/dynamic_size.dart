// ignore_for_file: camel_case_types, non_constant_identifier_names

library dynamic_size;

import 'package:flutter/material.dart';

class dynamicsize {
  final double _height;
  final double _width;

  dynamicsize(this._height, this._width);
  double height(double value) {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .height *
        ((value * 100 / _height) / 100);
  }

  double width(double value) {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .width *
        ((value * 100 / _width) / 100);
  }

  Widget HeightSpace(double value) {
    return SizedBox(
      height: height(value),
    );
  }

  Widget WidthSpace(double value) {
    return SizedBox(
      width: width(value),
    );
  }

  Widget Dcontainer({
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

Pop(BuildContext context) {
  Navigator.canPop(context) ? Navigator.pop(context) : null;
}

NewScreen(BuildContext context, Function() Screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
}

ReplaceScreen(BuildContext context, Function() Screen) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => Screen()));
}
