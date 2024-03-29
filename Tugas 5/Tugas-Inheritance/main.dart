import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  armorTitan armor = armorTitan();
  attackTitan attack = attackTitan();
  beastTitan beast = beastTitan();
  human h = human();

  armor.PowerPoint = 9;
  attack.PowerPoint = 8;
  beast.PowerPoint = 3;
  h.PowerPoint = 10;

  print("Power Point Armor Titan: ${armor.PowerPoint}");
  print("Power Point Attack Titan: ${attack.PowerPoint}");
  print("Power Point Beast Titan: ${beast.PowerPoint}");
  print("Power Point Human: ${h.PowerPoint}");

  print("Sifat dari Armor Titan : " + armor.terjang());
  print("Sifat dari Attack Titan : " + attack.punch());
  print("Sifat dari Beast Titan : " + beast.lempar());
  print("Sifat dari Human : " + h.killAlltitan());
}
