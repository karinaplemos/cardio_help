import 'package:flutter/material.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class InteractionTab extends StatefulWidget{
  final Map drug;

  const InteractionTab({Key key, @required this.drug}) : super(key: key);

  _InteractionTabState createState() => _InteractionTabState();

}

class _InteractionTabState extends State<InteractionTab>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        title: Text(widget.drug["name"]),
        centerTitle: true,
      ),
      body:
          ListView.builder(
            padding: theme.padding,
            itemCount: (widget.drug["interactionMed"].length + 1),
            itemBuilder: (context, index){
              if(index == 0){
                // Se o index for 0 retorno o Título da página
                return Container(
                  padding: theme.titleSpacing,
                  child: Text("Drogas de Interação e Efeitos",
                    style: theme.titleStyle, textAlign: theme.justifyAlign
                  )
                );                
              } else{
                // Caso contrário, retorno a informação guardada pelo drug.
                // Lembrando que o índice é index - 1
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Subtítulo
                    Container(
                      padding: theme.subtitleSpacing,
                      child: Text('\u2022 '+ widget.drug["interactionMed"][index-1].toString(),
                        style: theme.subtitleStyle, textAlign: theme.justifyAlign
                      ), 
                    ),
                    // Texto
                    Container(
                      padding: theme.textSpacing,
                      child: Text(widget.drug["interactionEffect"][index-1].toString(),
                        style: theme.textStyle, textAlign: theme.justifyAlign
                      )
                    )
                  ],
                );
              }         
            },
          ));
        
    
  }
}
