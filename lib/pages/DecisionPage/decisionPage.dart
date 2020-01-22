import 'package:cardio_help/pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';

class DecisionPage extends StatefulWidget{
  @override
  _DecisionPageState createState() => _DecisionPageState();

}

class _DecisionPageState extends State<DecisionPage>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Image(image: AssetImage("assets/icon.png")),
                SizedBox(height: 5,),
                Text("Cardio Help",
                  style: TextStyle(
                    fontSize: 26
                  ),
                )
              ]
            )
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text("Você é?",
                  style: TextStyle(
                    fontSize: 40
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      height: 57,
                      child: RaisedButton(
                        child: Text("Enfermeiro",
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 25),
                        ),//Color.fromRGBO(227, 62, 62, 1)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color.fromRGBO(238, 100, 144, 0.93))
                        ),
                        color: Color.fromRGBO(238, 100, 144, 0.93),
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    backgroundColor: Color.fromRGBO(238, 100, 144, 0.93),
                                    flag: true,
                                  )
                              )
                          );
                        },
                      ),
                    ),
                    
                    SizedBox(
                      height: 57,
                      child: RaisedButton(
                        child: Text("Farmacêutico", 
                          style: TextStyle(color: Colors.white, fontSize: 22)
                        ),
                        color: Color.fromRGBO(158, 87, 19, 0.62),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color.fromRGBO(158, 87, 19, 0.62))
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    backgroundColor: Color.fromRGBO(158, 87, 19, 0.62),
                                    flag: false,
                                  )
                              )
                          );
                        },
                      ),
                    )
                    
                  ]
                )
              ],
            ),
          )
        ],
        
      ),
    );
  }

}