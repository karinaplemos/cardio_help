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

  Map getData(int index, bool flag){
    Map data = {
      "title": null,
      "infos": null
    };

    if(flag){
      if(index == 0){
        data["title"] = ["Indicação","Apresentação","Diluição", "Rota de Administração"];
        data["infos"] = [
          this.widget.medicamento["indication"],
          this.widget.medicamento["presentation"],
          this.widget.medicamento["dilution"],
          this.widget.medicamento["routeAdm"]
        ];
      }else if(index == 1){
        data["title"] = ["Cuidados"];
        data["infos"] = [
          this.widget.medicamento["care"]
        ];
      }
    }else{
      if(index == 0){
        data["title"] = ["Classificação"];
        data["infos"] = [
          this.widget.medicamento["classification"]
        ];
      }else if(index == 1){
        data["title"] = ["Evento Adverso"];
        data["infos"] = [
          this.widget.medicamento["adverseReaction"]
        ];
      }else if(index == 2){
        data["title"] = ["Uso Terapêutico"];
        data["infos"] = [
          this.widget.medicamento["therapeuticUse"]
        ];
      }else if(index == 3){
        data["title"] = ["Interações Medicamentosas"];
        data["infos"] = [
          this.widget.medicamento["interactionMed"],
          this.widget.medicamento["interactionEffectEffect"],
        ];
      }
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: widget.backgroundColor,
          title: new Center(child: new Text(widget.medicamento["name"], textAlign: TextAlign.center)),
        ),
        body: Stack(
          children: <Widget>[  
            
            Container(
              margin: EdgeInsets.only(left: 80),
              
              child: Presentation(
                data: this.getData(currentSelectedIndex, widget.flag),
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
