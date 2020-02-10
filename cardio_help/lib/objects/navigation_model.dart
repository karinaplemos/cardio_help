import 'package:flutter/material.dart';
import 'package:cardio_help/objects/my_flutter_app_icons.dart';
import 'package:cardio_help/objects/attention_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationModel {
  String title;
  IconData icon;
  Color color;

  NavigationModel({this.title, this.icon, this.color});
}
  // Lista de abas dos detalhamentos dos medicamentos
  List<NavigationModel> itens = [
    NavigationModel(title: "Classificação/Efeitos", icon: Icons.format_list_bulleted, color: Colors.brown[700]),
    NavigationModel(title: "Uso Terapêutico", icon: Icons.healing, color: Colors.green[800]),
    NavigationModel(title: "Eventos Adversos", icon: Attention.attention__1_, color: Colors.amberAccent[700]),
    NavigationModel(title: "Detalhes", icon: Icons.info_outline, color: Colors.lightBlue[700]),
    NavigationModel(title: "Interações Medicamentosas", icon: MyFlutterApp.interactive, color: Colors.black),
    NavigationModel(title: "Cuidados", icon: FontAwesomeIcons.medkit, color: Colors.red[900]),
  ];



