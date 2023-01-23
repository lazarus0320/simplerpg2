import 'dart:math';

import 'package:flutter/material.dart';

import '../Monster/Monster.dart';

class DungeonScreen extends StatefulWidget {
  const DungeonScreen({super.key});

  @override
  State<DungeonScreen> createState() => _DungeonScreenState();
}

class _DungeonScreenState extends State<DungeonScreen> {
  List<Monster> monsterList = [
    Monster(name: "goblin", level: 3, hp: 25, attack: 10, defense: 2),
    Monster(name: "slime", level: 5, hp: 50, attack: 12, defense: 4),
    Monster(name: "snail", level: 1, hp: 15, attack: 5, defense: 0),
    Monster(name: "frog", level: 2, hp: 20, attack: 8, defense: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dungeon"),
      ),
      body: Center(
        child: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 3)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text("Searching the dungeon..."),
                    ),
                    const CircularProgressIndicator(),
                  ],
                );
              } else {
                int randomIndex = Random().nextInt(monsterList.length);
                String monster = monsterList[randomIndex].name;
                return Text('You encountered a ${monster}!');
              }
            }),
      ),
    );
  }
}