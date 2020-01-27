import 'package:flutter/material.dart';

class DetailsTab extends StatefulWidget{
  final Map medicamento;

  const DetailsTab({Key key, @required this.medicamento}) : super(key: key);

  @override
  _DetailsTabState createState() => _DetailsTabState();

}

class _DetailsTabState extends State<DetailsTab>{

  Widget _generateItems(List list) => ListView.builder(
    shrinkWrap: true,
    primary: false,
    itemCount: list.length,
    itemBuilder: (context, index){
      return Container(
        padding: EdgeInsets.only(left: 16,top: 8, right: 5,bottom: 12),
        child:Text(list[index].toString(),
        style: TextStyle(fontSize: 18))
      );
    },
  );


  Widget _generateSubItems(String s, var l) => Column(
      //shrinkWrap: true,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text('\u2022 '+ s,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
          ), 
        ),
        (s.toUpperCase().compareTo("DILUIÇÃO") != 0)? this._generateItems(l): Container(
          padding: EdgeInsets.only(left: 16,top: 8, right: 5,bottom: 12),
          child:Text(l.toString(),
          style: TextStyle(fontSize: 18))
        ),
      ],
    );

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 80),
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 12,bottom: 15),
          child:Text("Detalhes",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),

        this._generateSubItems("Indicação", widget.medicamento["indication"]),

        this._generateSubItems("Via de Administração", widget.medicamento["routeAdm"]),

        this._generateSubItems("Apresentação", widget.medicamento["presentation"]),

         this._generateSubItems("Diluição", widget.medicamento["dilution"]),
        
      ],
    );
  }

}
