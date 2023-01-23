import 'package:flutter/material.dart';

class DungeonScreen extends StatelessWidget {
  const DungeonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dungeon"),
      ),
      body: Center(
        child: Text("Welcome to the dungeon!"),
      ),
    );
  }
}