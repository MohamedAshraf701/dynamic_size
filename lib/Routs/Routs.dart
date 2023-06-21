import 'package:flutter/material.dart';

class Routs {
  pop(BuildContext context) {
   if( Navigator.canPop(context)) Navigator.pop(context);
  }

  NewScreen(BuildContext context, Function() Screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
  }

  ReplaceScreen(BuildContext context, Function() Screen) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Screen()));
  }
}
