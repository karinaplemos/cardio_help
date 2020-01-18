import 'package:flutter/material.dart';
import 'package:cardio_help/objects/custom_drawer/custom_navigator_drawer.dart';
import 'package:cardio_help/objects/presentation.dart';

class DrugsPage extends StatefulWidget {
  final Map medicamento;
  final Color backgroundColor;
  final bool flag;

  const DrugsPage(
    { 
      Key key,
      @required this.flag,
      @required this.medicamento,
      @required this.backgroundColor,
    }
  ): super(key: key); 

  @override     
  _DrugsPageState createState() => _DrugsPageState();
}

class _DrugsPageState extends State<DrugsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: widget.backgroundColor,
          title: Text(widget.medicamento["name"]),
        ),
        body: Stack(
          children: <Widget>[  
            
            Container(
              margin: EdgeInsets.only(left: 80),
              
              child: Presentation(
                medicamento: widget.medicamento,
              ),
            ),
            
            CollapsingNavigationDrawer(
              drawerBackgroundColor: widget.backgroundColor,
              flag: this.widget.flag,
            )
          ]
        )
    );
  }
}
