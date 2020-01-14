import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Classificação", icon: Icons.format_list_bulleted),
  NavigationModel(title: "Evento Adverso", icon: Icons.error),
  NavigationModel(title: "Uso Terapêutico", icon: Icons.healing),
  NavigationModel(title: "Interação", icon: Icons.notifications),
];