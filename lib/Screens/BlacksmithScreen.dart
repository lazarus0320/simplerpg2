import 'package:flutter/material.dart';

class BlacksmithScreen extends StatelessWidget {
  const BlacksmithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blacksmith"),
      ),
      body: Center(
        child: Text("Welcome to the blacksmith!"),
      ),
    );
  }
}