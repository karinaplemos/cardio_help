import 'package:flutter/material.dart';

class Presentation extends StatefulWidget{
  final Map medicamento;
  const Presentation(
    { 
      Key key,
    
      @required this.medicamento,
    }
  ): super(key: key);
  _PresantationState createState() => _PresantationState();
}

class _PresantationState extends State<Presentation>{

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child:
            Text("Rota de Administração", 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
            ),
          ),
          Column(
            children: List.generate(widget.medicamento["routeAdm"].length, (index){
              return Text(widget.medicamento["routeAdm"][index].toString(), 
              style: TextStyle(fontSize: 15.0));
            })
          )
      ],
    );
  }
}