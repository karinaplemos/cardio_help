import 'package:flutter/material.dart';
import 'package:cardio_help/objects/custom_drawer/model/my_flutter_app_icons.dart';
import 'package:cardio_help/objects/custom_drawer/model/attention_icons.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}
  // Lista de abas do 
  List<NavigationModel> itens = [
    NavigationModel(title: "Informações", icon: Icons.info_outline),
    NavigationModel(title: "Cuidados", icon: Icons.healing),
    NavigationModel(title: "Classificação", icon: Icons.format_list_bulleted),
    NavigationModel(title: "Evento Adverso", icon: MyFlutterApp.interactive),
    NavigationModel(title: "Uso Terapêutico", icon: Icons.healing),
    NavigationModel(title: "Interação", icon: Attention.attention__1_),
  ];



