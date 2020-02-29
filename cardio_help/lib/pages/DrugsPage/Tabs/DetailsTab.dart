import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class DetailsTab extends StatefulWidget {
  final Map drug;

  const DetailsTab({Key key, @required this.drug}) : super(key: key);

  @override
  _DetailsTabState createState() => _DetailsTabState();
}

class _DetailsTabState extends State<DetailsTab> {
  Widget _generateItems(List list) => ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
              padding: theme.textSpacing,
              child: Text(list[index].toString(),
                  style: theme.textStyle, textAlign: theme.justifyAlign));
        },
      );

  Widget _generateSubItems(String s, var l) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //Define os subtitulos da pagina
            padding: theme.subtitleSpacing,
            child: Text('\u2022 ' + s,
                style: theme.subtitleStyle, textAlign: theme.justifyAlign),
          ),
          (s.toUpperCase().compareTo("DILUIÇÃO") != 0)
              ? this._generateItems(l)
              : Container(
                  //Separa os subitens
                  padding: theme.textSpacing,
                  child: Text(l.toString(),
                      style: theme.textStyle, textAlign: theme.justifyAlign)),
        ],
      );
  DataRow _getDataRow(var routeAdmCell, var presetentionCell) {
    return DataRow(
      cells: <DataCell>[
        DataCell(Text(routeAdmCell)),
        DataCell(Text(presetentionCell)),
      ],
    );
  }

  Widget presentationTable(var presetention, var routeAdm){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(label: Text('\u2022\' Apresentação',style: theme.textStyle)),
          DataColumn(label: Text('\u2022\'Via de Administração',style: theme.textStyle)),
        ],
        rows: List.generate(
          routeAdm.length, (index) => _getDataRow(routeAdm[index], presetention[index]))
      ),
    );
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: Text(widget.drug["name"]),
        centerTitle: true,
      ),
      body:ListView(
        padding: theme.padding,
        children: <Widget>[
          Container(
            padding: theme.titleSpacing,
            child: Text("Detalhes",
                style: theme.titleStyle, textAlign: theme.justifyAlign),
          ),
          this._generateSubItems("Indicação", widget.drug["indication"]),
          this.presentationTable(widget.drug["routeAdm"], widget.drug["presentation"]),
          // this._generateSubItems("Via de Administração", widget.drug["routeAdm"]),
          // this._generateSubItems("Apresentação", widget.drug["presentation"]),
          this._generateSubItems("Diluição", widget.drug["dilution"]),
        ],
      ),
    );
  }
}
