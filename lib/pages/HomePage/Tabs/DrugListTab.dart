import 'package:flutter/material.dart';
import 'package:cardio_help/pages/DrugsPage/drugsPage.dart';

class DrugListTab extends StatefulWidget{
  final List drugs;

  const DrugListTab({Key key, @required this.drugs}) : super(key: key);
  @override
  _DrugListTabState createState() => _DrugListTabState();

}

class _DrugListTabState extends State<DrugListTab>{
  @override
  Widget build(BuildContext context) {
    return (widget.drugs != null)? // Enquanto a lista de drug for diferente de nulo
            ListView.builder( //Gerador de itens da lista
              itemBuilder: (context, index) => ListTile(
                title: Text(widget.drugs[index]["name"]),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DrugsPage( 
                            drug: widget.drugs[index]
                          )
                      )
                  );
                },
              ),
              itemCount: widget.drugs.length,
            ): Center(
              child: CircularProgressIndicator(),
            );
  }

}