import 'package:flutter/material.dart';

class CareTab extends StatefulWidget{
  final Map medicamento;

  const CareTab({Key key, @required this.medicamento});

  _CareTabState createState() => _CareTabState();    
}

class _CareTabState extends State<CareTab>{
  @override
  Widget build(BuildContext context){  
    return ListView.builder(
        padding: EdgeInsets.only(left: 80),                 // Espaço necessário por causa das abas verticais
        itemCount: (widget.medicamento["care"].length + 1), // Acrescento +1 por causa do título
        itemBuilder: (context, index){
          if(index == 0){
            // Se o index for 0 retorno o Título da página
            return Container(
              padding: EdgeInsets.only(top: 12, bottom: 15),
              child: Text("Cuidados",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
              ),
            );
          }else{
            // Caso contrário, retorno a informação guardada pelo medicamento.
            // Lembrando que o índice é index - 1
            return Container(
                padding: EdgeInsets.only(left: 16,top: 8, right: 5,bottom: 12),
                child: Text('\u2022 '+ widget.medicamento["care"][index-1].toString(),
                  style: TextStyle(fontSize: 18),
                ),   
              );
          }
        },
      );
  }
}

