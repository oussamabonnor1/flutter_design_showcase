import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/tourism_scene.dart';

void main() {
  runApp(MainScene());
}

class MainScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter design showcase",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter design showcase"),
        ),
        body: RootLayout(),
      ),
    );
  }
}
