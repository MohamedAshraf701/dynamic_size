import 'package:flutter/material.dart';

class Routs {
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
}
