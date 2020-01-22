import 'package:flutter/material.dart';
import 'package:cardio_help/objects/custom_drawer/custom_navigator_drawer.dart';
import 'package:cardio_help/objects/presentation.dart';
import 'package:cardio_help/objects/custom_drawer/commons/currentIndex.dart';



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
  void initState(){
    currentSelectedIndex = 0;
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    print(currentSelectedIndex);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: widget.backgroundColor,
          title: new Center(child: new Text(widget.medicamento["name"], textAlign: TextAlign.center)),
        ),
        body: CollapsingNavigationDrawer(
            drawerBackgroundColor: widget.backgroundColor,
            flag: this.widget.flag,
            medicamento: this.widget.medicamento,
          )
        
    );
  }
}
