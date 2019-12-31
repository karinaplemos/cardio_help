import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List medimentos = ["ABC", "DEF", "KLM"]; //Lista de medicamentos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Cardio Help"),
      ),
      body: 
          ListView.builder( //Gerador de itens da lista
            itemBuilder: (context, index) => ListTile(
              title: Text(medimentos[index]),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},

            ),
        
            itemCount: medimentos.length,
          )
    );
  }
}