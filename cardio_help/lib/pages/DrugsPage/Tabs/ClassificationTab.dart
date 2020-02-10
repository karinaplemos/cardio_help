import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class ClassificationTab extends StatefulWidget{
  final Map drug;

  const ClassificationTab  ({Key key, @required this.drug});

  _ClassificationTabState createState() => _ClassificationTabState();    
}
class _ClassificationTabState extends State<ClassificationTab>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: Text(widget.drug["name"]),
        centerTitle: true,
      ),
      body:Container(
      padding: theme.padding,
      child:ListView(
        children: <Widget>[
          Container(
            padding: theme.titleSpacing,
            child:Text("Classificação",
            style: theme.titleStyle, textAlign: theme.justifyAlign),
          ),
          
          Container(
            padding: theme.textSpacing,
            child:Text(widget.drug["classification"].toString(),
            style: theme.textStyle, textAlign: theme.justifyAlign)
          )
          
          
          ],
      )
    ),
    );
  } 

}