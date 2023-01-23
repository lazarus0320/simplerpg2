import 'package:flutter/material.dart';
import 'package:simplerpg2/Screens/BlacksmithScreen.dart';
import 'package:simplerpg2/Screens/DungeonScreen.dart';
import 'package:simplerpg2/Screens/StoreScreen.dart';
import 'package:simplerpg2/Screens/InventoryScreen.dart';
import 'package:simplerpg2/Screens/StatusScreen.dart';

import 'User/User.dart';

void main() =>
    runApp(MaterialApp(
      title: 'Simple RPG2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    ));


class MainScreen extends StatelessWidget {
  final User user = User();
  MainScreen({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple RPG2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: Text("Simple RPG2", style: TextStyle(fontSize: 50),),
            ),
            ElevatedButton(
              child: const SizedBox(
                width: 100,
                child: Center(child: Text("Dungeon")),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DungeonScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const SizedBox(
                width: 100,
                child: Center(child:Text("BlackSmith")),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlacksmithScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const SizedBox(
                width: 100,
                child: Center(child:Text("Store")),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StoreScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const SizedBox(
                width: 100,
                child: Center(child:Text("Inventory")),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InventoryScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const SizedBox(
                width: 100,
                child: Center(child:Text("Status")),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatusScreen(user: user)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
