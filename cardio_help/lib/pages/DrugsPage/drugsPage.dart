import 'package:flutter/material.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/CareTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/DetailsTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/InteractionTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/ClassificationTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/AdverseReactionTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/TherapeuticUse.dart';
import 'package:cardio_help/theme/theme.dart' as theme;
import 'package:cardio_help/objects/navigation_model.dart';

class DrugsPage extends StatefulWidget {
  final Map drug;

  const DrugsPage(
    { 
      Key key,
      @required this.drug
    }
  ): super(key: key); 

  @override     
  _DrugsPageState createState() => _DrugsPageState();
}

class _DrugsPageState extends State<DrugsPage> {
  List tabs; 

  @override
  void initState() {
    this.tabs = [
      ClassificationTab(drug: widget.drug,),    //Classificação/Efeitos
      TherapeuticUseTab(drug: widget.drug,),    //Uso Terapêutico
      AdverseReactionTab(drug: widget.drug,),   //Evento Adverso
      DetailsTab(drug: widget.drug,),           //Detalhes
      InteractionTab(drug: widget.drug,),       //Interação
      CareTab(drug: widget.drug,),              //Cuidados
  ];

  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.backgroundColor,
          title: Text(widget.drug["name"]),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            SizedBox( height: 10),
            Visibility(
              visible: (widget.drug["mav"]),
              child: Text("MAV - Medicamento de Alta Vigilância", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold))
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: List.generate(itens.length, (currentSelectedIndex) {
                    return RaisedButton(
                      onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => tabs[currentSelectedIndex],
                              )
                          );
                      },
                      shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Flex(
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(itens[currentSelectedIndex].icon, size: 50, color: itens[currentSelectedIndex].color),
                            Text(itens[currentSelectedIndex].title, style: theme.textButtonStyle, textAlign: theme.centerAlign),
                          ]
                        ),
                      color: Colors.teal[100],
                        );
                  }
                ),
              )
            )
          ]
        ),       
  );   
  }
}
