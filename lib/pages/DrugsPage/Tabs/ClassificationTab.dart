import 'package:flutter/material.dart';

class ClassificationTab extends StatefulWidget{
  final Map medicamento;

  const ClassificationTab  ({Key key, @required this.medicamento});

  _ClassificationTabState createState() => _ClassificationTabState();    
}
class _ClassificationTabState extends State<ClassificationTab>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80),
      child:Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 12,bottom: 15),
            child:Text("Classificação",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 16,top: 8, right: 5,bottom: 12),
            child:Text(widget.medicamento["classification"].toString(),
            style: TextStyle(fontSize: 18))
          )
          
          
        ],
      )
    );
  } 

}