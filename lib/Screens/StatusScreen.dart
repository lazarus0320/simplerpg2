import 'package:flutter/material.dart';
import '../User/User.dart';

class StatusScreen extends StatefulWidget {
  final User user;

  const StatusScreen({super.key, required this.user});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  int _tempStrength = 0;

  int _tempAgility = 0;

  int _tempIntelligence = 0;

  int _tempLuck = 0;

  int points = 0;
  bool levelUp = true;

  @override
  void initState() {
    super.initState();
    if (levelUp) {
      points = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status Screen"),
      ),
      body: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return Column(
              children: <Widget>[
                Text("Level: ${widget.user.level}"),
                Text("Stamina: ${widget.user.stamina}"),
                Text("Power: ${widget.user.strength}"),
                Text("Agility: ${widget.user.agility}"),
                Text("Intelligence: ${widget.user.intelligence}"),
                Text("Luck: ${widget.user.luck}"),
                Text("Equipped Weapon: ${widget.user.equippedWeapon}"),
                Text("강제 레벨업"),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                              builder: (BuildContext context, setState) {
                                return AlertDialog(
                                    title: Text("Level Up"),
                                    content: Column(
                                      children: <Widget>[
                                        Text("You have leveled up!"),
                                        Text(
                                            "You have $points points to allocate"),
                                        Text("힘: ${widget.user.strength +
                                            _tempStrength}"),
                                        ElevatedButton(
                                          onPressed: points > 0
                                              ? () {
                                            setState(() {
                                              _tempStrength++;
                                              points--;
                                            });
                                          }
                                              : null,
                                          child: Text("+"),
                                        ),
                                        Text("민첩: ${widget.user.agility +
                                            _tempAgility}"),
                                        ElevatedButton(
                                          onPressed: points > 0
                                              ? () {
                                            setState(() {
                                              _tempAgility++;
                                              points--;
                                            });
                                          }
                                              : null,
                                          child: Text("+"),
                                        ),
                                        Text("지능: ${widget.user.intelligence +
                                            _tempIntelligence}"),
                                        ElevatedButton(
                                          onPressed: points > 0
                                              ? () {
                                            setState(() {
                                              _tempIntelligence++;
                                              points--;
                                            });
                                          }
                                              : null,
                                          child: Text("+"),
                                        ),
                                        Text("운: ${widget.user.luck +
                                            _tempLuck}"),
                                        ElevatedButton(
                                          onPressed: points > 0
                                              ? () {
                                            setState(() {
                                              _tempLuck++;
                                              points--;
                                            });
                                          }
                                              : null,
                                          child: Text("+"),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              widget.user.strength +=
                                                  _tempStrength;
                                              widget.user.agility +=
                                                  _tempAgility;
                                              widget.user.intelligence +=
                                                  _tempIntelligence;
                                              widget.user.luck += _tempLuck;
                                              _tempStrength = 0;
                                              _tempAgility = 0;
                                              _tempIntelligence = 0;
                                              _tempLuck = 0;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("OK"),
                                        )
                                      ],
                                    ));
                              });
                        });
                  },
                  child: Text("Level Up"),
                )
              ]
          );
        },
      ),
    );
  }
}
