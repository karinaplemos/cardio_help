import 'package:flutter/material.dart';

class InteractionTab extends StatefulWidget{
  final Map medicamento;

  const InteractionTab({Key key, @required this.medicamento}) : super(key: key);

  _InteractionTabState createState() => _InteractionTabState();

}

class _InteractionTabState extends State<InteractionTab>{
  @override
  Widget build(BuildContext context) {
    return 
          ListView.builder(
            padding: EdgeInsets.only(left: 80),
            itemCount: (widget.medicamento["interactionMed"].length + 1),
            itemBuilder: (context, index){
              if(index == 0){
                // Se o index for 0 retorno o Título da página
                return Container(
                  padding: EdgeInsets.only(top: 12, bottom: 15),
                  child: Text("Interações Medicamentosas",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
                  )
                );                
              } else{
                // Caso contrário, retorno a informação guardada pelo medicamento.
                // Lembrando que o índice é index - 1
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Subtítulo
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('\u2022 '+ widget.medicamento["interactionMed"][index-1].toString(),
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                      ), 
                    ),
                    // Texto
                    Container(
                      padding: EdgeInsets.only(left: 20,top: 8, right: 5,bottom: 12),
                      child: Text(widget.medicamento["interactionEffect"][index-1].toString(),
                        style: TextStyle(fontSize: 18)
                      )
                    )
                  ],
                );
              }         
            },
          );
        
    
  }
}
