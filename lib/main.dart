import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/profile_scene.dart';
import 'package:flutter_design_showcase/QuotesScene/quotes_scene.dart';
import 'package:flutter_design_showcase/tourism_scene.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Design Showcase",
    home: MainScene(),
  ));
}

class MainScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: QuotesScene(),
    );
  }
}
