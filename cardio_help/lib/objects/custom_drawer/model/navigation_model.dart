import 'package:flutter/material.dart';
import 'package:cardio_help/objects/custom_drawer/model/my_flutter_app_icons.dart';
import 'package:cardio_help/objects/custom_drawer/model/attention_icons.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

  List<NavigationModel> navigationItems = [
    NavigationModel(title: "Classificação", icon: Icons.format_list_bulleted),
    NavigationModel(title: "Evento Adverso", icon: MyFlutterApp.interactive),
    NavigationModel(title: "Uso Terapêutico", icon: Icons.healing),
    NavigationModel(title: "Interação", icon: Attention.attention__1_),
  ];

