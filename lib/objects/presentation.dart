import 'package:flutter/material.dart';

class Presentation extends StatefulWidget{
  final Map data;
  const Presentation(
    { 
      Key key,
    
      @required this.data,
    }
  ): super(key: key);
  _PresantationState createState() => _PresantationState();
}

class _PresantationState extends State<Presentation>{

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: widget.data['title'].length,
      itemBuilder: (content, index){
        return Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child:
                Text(widget.data["title"][index].toString(), 
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(widget.data["infos"].length, (index){
                return Text(widget.data["infos"][index].toString(), 
                style: TextStyle(fontSize: 15.0));
              })
            )
          ],
        ); 
      }
      
    );
  }
}

/**
 * Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child:
            Text("Rota de Administração", 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
            ),
          ),
          Column(
            children: List.generate(widget.data["infos"].length, (index){
              return Text(widget.data["routeAdm"][index].toString(), 
              style: TextStyle(fontSize: 15.0));
            })
          )
      ],
    );
 */