import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class AdverseReactionTab extends StatefulWidget{
  final Map drug;

  const AdverseReactionTab ({Key key, @required this.drug});

  _AdverseReactionTabState createState() => _AdverseReactionTabState();    
}
class _AdverseReactionTabState extends State<AdverseReactionTab>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: Text(widget.drug["name"]),
      ),
      body:Container(
        padding: theme.left80,
        child:ListView(
        children: <Widget>[
          Container(
            padding: theme.titleSpacing,
            child:Text("Eventos Adversos",
            style: theme.titleStyle, textAlign: theme.justifyAlign),
          ),
          
          Container(
            padding: theme.textSpacing,
            child:Text(widget.drug["adverseReaction"].toString(),
            style: theme.textStyle, textAlign: theme.justifyAlign)
          )
        ],
      )
    ),
    );
  } 

}
