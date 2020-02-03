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
    return Container(
      padding: theme.left80,
      child:ListView(
        children: <Widget>[
          Container(
            padding: theme.titleSpacing,
            child:Text("Classificação",
            style: theme.titleStyle),
          ),
          
          Container(
            padding: theme.textSpacing,
            child:Text(widget.drug["classification"].toString(),
            style: theme.textStyle)
          )
          
          
          ],
      )
    );
  } 

}