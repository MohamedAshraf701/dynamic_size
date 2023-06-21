import 'package:flutter/material.dart';
import 'package:dynamic_size/dynamic_size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamicsize size = dynamicsize(849, 393);

    return MaterialApp(
      title: 'Dynamic Size Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Size Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height(100),
                width: size.width(100),
                color: Colors.red,
              ),
              size.HeightSpace(20),
              Container(
                height: size.height(50),
                width: size.width(50),
                color: Colors.blue,
              ),
              size.HeightSpace(20),
              Container(
                height: size.height(200),
                width: size.width(200),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}