import 'package:flutter/material.dart';

class AdverseReactionTab extends StatefulWidget{
  final Map medicamento;

  const AdverseReactionTab ({Key key, @required this.medicamento});

  _AdverseReactionTabState createState() => _AdverseReactionTabState();    
}
class _AdverseReactionTabState extends State<AdverseReactionTab>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80),
      child:ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 12,bottom: 15),
            child:Text("Eventos Adversos",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 16,top: 8, right: 5,bottom: 12),
            child:Text(widget.medicamento["adverseReaction"].toString(),
            style: TextStyle(fontSize: 18))
          )
          
          
        ],
      )
    );
  } 

}
