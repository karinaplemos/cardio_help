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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(widget.medicamento["name"]),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Detalhes'),
              Tab(text: 'Indicação e Cuidados'),
              ],
          ),
        ),
        body: TabBarView(
          children: [
            // Aba de detalhes: devem aparecer essas chaves: presentation, dilution, routeAdm
            Column(
              children: <Widget>[
                Text("Diluição"),
                Text(widget.medicamento["dilution"]),
                Text("Apresentação"),
                Column(
                  children: List.generate(widget.medicamento["presentation"].length, (index){
                    return Text(widget.medicamento["presentation"][index].toString());
                  })
                ),
                Text("Rota de Administração"),
                Column(
                  children: List.generate(widget.medicamento["routeAdm"].length, (index){
                    return Text(widget.medicamento["routeAdm"][index].toString());
                  })
                )
              ]
            )
            ,
            // Aba de Indicação e Cuidados: devem aparecer essas chaves: indication, care
            Column(
              children: <Widget>[
                Text("Indicação"),
                Column(
                  children:List.generate(widget.medicamento["indication"].length, (index){
                    return Text(widget.medicamento["indication"][index].toString());
                  })
                ),
                Text("Cuidados"),
                Column(
                  children: List.generate(widget.medicamento["care"].length, (index){
                    return Text(widget.medicamento["care"][index].toString());
                  })
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
