import 'package:flutter/material.dart';

class InfoTab extends StatefulWidget{
  @override
  _InfoTabState createState() => new _InfoTabState();
}

class _InfoTabState extends State<InfoTab>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text("Prezado Profissional de Saúde"),
          Text("Estudos apontam que as potenciais interações medicamentosas podem ocorrer em 44,3% a 95% dos pacientes, principalmente em terapia intensiva."),
          Text("Para tal, cada droga identificada possui a respectiva classificação, efeitos, uso terapêutico,evento adverso, apresentação e via de administração, diluição, medicamento(s) de interação, efeitos da interação e principalmente os cuidados para prática segura.")
        ],
      ),
    );
  }

}