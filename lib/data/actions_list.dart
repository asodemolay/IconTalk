import 'package:flutter/material.dart';

class Action {
  late String text;
  late IconData icon;
  late Color iconColor;
  late String category;

  Action({
    required this.text,
    required this.icon,
    this.iconColor = Colors.blue,
    this.category = "default",
  });
}

List<Action> getActions() {
  List<Action> actions = [];

  actions.add(Action(text: "Água", icon: Icons.water_drop_outlined));
  actions.add(Action(text: "Fome", icon: Icons.fastfood_outlined));
  actions.add(Action(text: "Dormir", icon: Icons.bed));
  actions.add(Action(text: "Brincar", icon: Icons.toys));
  actions.add(Action(text: "Suco", icon: Icons.apple));
  actions.add(Action(text: "TV", icon: Icons.tv));
  actions.add(Action(text: "Escola", icon: Icons.school));

  return actions;
}
