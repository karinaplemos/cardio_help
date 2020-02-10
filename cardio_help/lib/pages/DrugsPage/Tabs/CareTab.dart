import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class CareTab extends StatefulWidget{
  final Map drug;

  const CareTab({Key key, @required this.drug});

  _CareTabState createState() => _CareTabState();    
}

class _CareTabState extends State<CareTab>{
  @override
  Widget build(BuildContext context){  
    return Scaffold(
      body:ListView.builder(
        padding: theme.left80,                 // Espaço necessário por causa das abas verticais
        itemCount: (widget.drug["care"].length + 1), // Acrescento +1 por causa do título
        itemBuilder: (context, index){
          if(index == 0){
            // Se o index for 0 retorno o Título da página
            return Container(
              padding: theme.titleSpacing,
              child: Text("Cuidados",
                style: theme.titleStyle, textAlign: theme.justifyAlign
              ),
            );
         }else{
            // Caso contrário, retorno a informação guardada pelo drug.
            // Lembrando que o índice é index - 1
            return Container(
                padding: theme.textSpacing,
                child: Text('\u2022 '+ widget.drug["care"][index-1].toString(),
                  style: theme.textStyle, textAlign: theme.justifyAlign
                ),   
              );
          }
        },
      ));
  }
}

