import 'package:flutter/material.dart';
import 'package:cardio_help/pages/DrugsPage/drugsPage.dart';

class DrugListTab extends StatefulWidget{
  final List medicamentos;
  final Color backgroundColor;

  const DrugListTab({Key key, @required this.medicamentos, @required this.backgroundColor}) : super(key: key);
  @override
  _DrugListTabState createState() => _DrugListTabState();

}

class _DrugListTabState extends State<DrugListTab>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (widget.medicamentos != null)? // Enquanto a lista de medicamento for diferente de nulo
            ListView.builder( //Gerador de itens da lista
              itemBuilder: (context, index) => ListTile(
                title: Text(widget.medicamentos[index]["name"]),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DrugsPage( 
                            medicamento: widget.medicamentos[index],
                            backgroundColor: widget.backgroundColor,
                          )
                      )
                  );
                },
              ),
              itemCount: widget.medicamentos.length,
            ): Center(
              child: CircularProgressIndicator(),
            );
  }

}