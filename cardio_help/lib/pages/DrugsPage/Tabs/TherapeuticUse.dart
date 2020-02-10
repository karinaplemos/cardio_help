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
    return 
      Scaffold(
        appBar: AppBar(
          backgroundColor: theme.backgroundColor,
          title: Text(widget.drug["name"]),
          centerTitle: true,
        ),
        body: ListView(
        padding: theme.padding,
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
        ]),
      );
  } 

}
