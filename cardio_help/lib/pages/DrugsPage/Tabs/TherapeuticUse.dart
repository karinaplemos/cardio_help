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
    return ListView(
        padding: theme.left80,
        children: <Widget>[
          Container(
            padding: theme.titleSpacing,
            child:Text("Uso Terapêutico",
            style: theme.titleStyle, textAlign: theme.justifyAlign),
          ),
          
          Container(
            padding: theme.textSpacing,
            child:Text(widget.drug["therapeuticUse"].toString(),
            style: theme.textStyle, textAlign: theme.justifyAlign)
          )
          
        ],
      );
  } 

}
