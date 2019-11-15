import 'package:flutter/material.dart';

class ProfileScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Showcase"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: ProfileLayout(),
    );
  }
}

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

