import 'package:flutter/material.dart';
import 'package:dynamicutils/dynamicutils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DynamicSize size = DynamicSize(849, 393);

    return MaterialApp(
      title: 'Dynamic Size Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic Size Example'),
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
