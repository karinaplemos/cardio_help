import 'package:flutter/material.dart';
import 'package:cardio_help/objects/custom_drawer/custom_navigator_drawer.dart';

class DrugsPage extends StatefulWidget {
  final Map medicamento;

  const DrugsPage(
    { 
      Key key,
      @required this.medicamento
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
          backgroundColor: Colors.red,
          title: Text(widget.medicamento["name"]),
        ),
        body: CollapsingNavigationDrawer()
    );
  }
}
