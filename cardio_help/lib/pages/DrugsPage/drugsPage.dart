import 'package:flutter/material.dart';

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
  List topicos = ['Classificação/Efeitos','Uso Terapêutico','Eventos Adversos', 'Detalhes', 'Interação Medicamentosa','Cuidados'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(widget.medicamento["name"]),
        ),
        body:  GridView.count(
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

  returnWidget( ){

  }

}
