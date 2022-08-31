// ignore_for_file: camel_case_types

library dynamic_size;

import 'package:flutter/material.dart';

class dynamicsize {
  final BuildContext context;
  final double height;
  final double width;

  dynamicsize(this.context, this.height, this.width);
  double h(double value) {
    return MediaQuery.of(context).size.height * ((value * 100 / height) / 100);
  }

  double w(double value) {
    return MediaQuery.of(context).size.width * ((value * 100 / width) / 100);
  }
}
