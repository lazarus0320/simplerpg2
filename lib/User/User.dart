class User {
  int level;
  int strength;
  int agility;
  int intelligence;
  int luck;
  int hp;
  int stamina;
  int money;
  int exp;
  String equippedWeapon;

  User({this.level = 1, this.strength = 10, this.agility = 10, this.intelligence = 10, this.luck = 10, this.hp = 100, this.stamina = 100, this.money = 0, this.exp = 0, this.equippedWeapon = '몽둥이'});

  // void levelUp({int strengthPoints, int agilityPoints, int intelligencePoints, int luckPoints}) {
  //   level++;
  //   stamina += 10;
  //   money += 50;
  //   if (strengthPoints != null) strength += strengthPoints;
  //   if (agilityPoints != null) agility += agilityPoints;
  //   if (intelligencePoints != null) intelligence += intelligencePoints;
  //   if (luckPoints != null) luck += luckPoints;
  // }

  void equipWeapon(String weapon) {
    equippedWeapon = weapon;
  }

  void printInfo() {
    print("Level: $level");
    print("Strength: $strength");
    print("Agility: $agility");
    print("Intelligence: $intelligence");
    print("Luck: $luck");
    print("Stamina: $stamina");
    print("Money: $money");
    print("Equipped Weapon: $equippedWeapon");
  }
}