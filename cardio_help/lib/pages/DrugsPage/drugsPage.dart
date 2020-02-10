import 'package:flutter/material.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/CareTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/DetailsTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/InteractionTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/ClassificationTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/AdverseReactionTab.dart';
import 'package:cardio_help/pages/DrugsPage/Tabs/TherapeuticUse.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

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
  List topicos = ['Classificação/Efeitos','Uso Terapêutico','Eventos Adversos', 'Detalhes', 'Interação Medicamentosa','Cuidados'];
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
        ),
        body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: List.generate(topicos.length, (currentSelectedIndex) {
            return RaisedButton(
              onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => tabs[currentSelectedIndex],
                      )
                  );
              },
              padding: const EdgeInsets.all(8),
              child: Text(topicos[currentSelectedIndex]),
              color: Colors.teal[100],
                );
          }),
        ),
/*        )
         GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
            children: <Widget>[
                RaisedButton(
                  onPressed: () {

                  },
                  padding: const EdgeInsets.all(8),
                  child: const Text('Classificação/Efeitos'),
                  color: Colors.teal[100],
                ),
                RaisedButton(
                  onPressed: () {

                  },
                  padding: const EdgeInsets.all(8),
                  child: const Text('Uso Terapêutico'),
                  color: Colors.teal[200],
                ),
                RaisedButton(
                  onPressed: () {

                  },
                  padding: const EdgeInsets.all(8),
                  child: const Text('Eventos Adversos'),
                  color: Colors.teal[300],
                ),
                RaisedButton(
                  onPressed: () {

                  },
                  padding: const EdgeInsets.all(8),
                  child: const Text('Detalhes'),
                  color: Colors.teal[400],
                ),
                RaisedButton(
                  onPressed: () {

                  },
                  padding: const EdgeInsets.all(8),
                  child: const Text('Interação Medicamentosa'),
                  color: Colors.teal[500],
                ),
                RaisedButton(
                  onPressed: () {
                    
                  },
                  padding: const EdgeInsets.all(8),
                  child: const Text('Cuidados'),
                  color: Colors.teal[600],
                ),
            ],
      ), 
      */

        //        Text("Diluição"),
        //        Text(widget.medicamento["dilution"]),
        //        Text("Apresentação"),
        //        Column(
       //           children: List.generate(widget.medicamento["presentation"].length, (index){
       //             return Text(widget.medicamento["presentation"][index].toString());
       //           })
       //         ),
       //         Text("Rota de Administração"),
        //        Column(
       //           children: List.generate(widget.medicamento["routeAdm"].length, (index){
         //           return Text(widget.medicamento["routeAdm"][index].toString() );
                 // })
            //    )          
  );   
  }
}
