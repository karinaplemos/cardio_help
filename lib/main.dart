import 'package:cardio_help/pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF236E4B),
  ));
  runApp(new MaterialApp(title: "Cardio Help",
    home: HomePage(), //Funcao para a chamada do aplicativo
  ));

}

