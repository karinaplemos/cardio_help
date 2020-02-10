import 'package:flutter/material.dart';
import 'package:cardio_help/objects/my_flutter_app_icons.dart';
import 'package:cardio_help/objects/attention_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}
  // Lista de abas dos detalhamentos dos medicamentos
  List<NavigationModel> itens = [
    NavigationModel(title: "Classificação/Efeitos", icon: Icons.format_list_bulleted),
    NavigationModel(title: "Uso Terapêutico", icon: Icons.healing),
    NavigationModel(title: "Eventos Adversos", icon: Attention.attention__1_),
    NavigationModel(title: "Detalhes", icon: Icons.info_outline),
    NavigationModel(title: "Interações Medicamentosas", icon: MyFlutterApp.interactive),
    NavigationModel(title: "Cuidados", icon: FontAwesomeIcons.medkit),
  ];



