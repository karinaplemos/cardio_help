import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class TherapeuticUseTab extends StatefulWidget{
  final Map drug;

  const TherapeuticUseTab ({Key key, @required this.drug});

  _TherapeuticUseTabState createState() => _TherapeuticUseTabState();    
}
class _TherapeuticUseTabState extends State<TherapeuticUseTab>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: theme.left80,
      child:ListView(
        children: <Widget>[
          Container(
            padding: theme.titleSpacing,
            child:Text("Uso Terapêutico",
            style: theme.titleStyle),
          ),
          
          Container(
            padding: theme.textSpacing,
            child:Text(widget.drug["therapeuticUse"].toString(),
            style: theme.textStyle)
          )
          
          
        ],
      )
    );
  } 

}
