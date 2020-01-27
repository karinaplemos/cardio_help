import 'package:flutter/material.dart';

class TherapeuticUseTab extends StatefulWidget{
  final Map medicamento;

  const TherapeuticUseTab ({Key key, @required this.medicamento});

  _TherapeuticUseTabState createState() => _TherapeuticUseTabState();    
}
class _TherapeuticUseTabState extends State<TherapeuticUseTab>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80),
      child:ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 12,bottom: 15),
            child:Text("Uso Terapêutico",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 16,top: 8, right: 5,bottom: 12),
            child:Text(widget.medicamento["therapeuticUse"].toString(),
            style: TextStyle(fontSize: 18))
          )
          
          
        ],
      )
    );
  } 

}
