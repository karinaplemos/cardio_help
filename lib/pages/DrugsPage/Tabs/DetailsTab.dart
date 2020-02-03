import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class DetailsTab extends StatefulWidget{
  final Map drug;

  const DetailsTab({Key key, @required this.drug}) : super(key: key);

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
        padding: theme.textSpacing,
        child:Text(list[index].toString(),
        style: theme.textStyle, textAlign: theme.justifyAlign)
      );
    },
  );


  Widget _generateSubItems(String s, var l) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container( //Define os subtitulos da pagina
          padding: theme.subtitleSpacing,
          child: Text('\u2022 '+ s,
            style: theme.subtitleStyle, textAlign: theme.justifyAlign
          ), 
        ),
        (s.toUpperCase().compareTo("DILUIÇÃO") != 0)? this._generateItems(l): Container( //Separa os subitens
          padding: theme.textSpacing,
          child:Text(l.toString(),
          style: theme.textStyle, textAlign: theme.justifyAlign)
        ),
      ],
    );

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: theme.left80,
      children: <Widget>[
        Container(
          padding: theme.titleSpacing,
          child:Text("Detalhes",
          style: theme.titleStyle, textAlign: theme.justifyAlign),
        ),

        this._generateSubItems("Indicação", widget.drug["indication"]),

        this._generateSubItems("Via de Administração", widget.drug["routeAdm"]),

        this._generateSubItems("Apresentação", widget.drug["presentation"]),

        this._generateSubItems("Diluição", widget.drug["dilution"]),
        
      ],
    );
  }

}
