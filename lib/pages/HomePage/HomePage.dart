import 'package:cardio_help/pages/HomePage/Tabs/DrugListTab.dart';
import 'package:cardio_help/pages/HomePage/Tabs/InfoTab.dart';
import 'package:flutter/material.dart';
import 'package:cardio_help/objects/database.dart'; 


class HomePage extends StatefulWidget { 

  @override  
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  Database data = new Database();               
  final Color backgroundColor = Color(0xFF236E4B);//Color(0xFF88C425); //Color(0xFF519548);
  List medicamentos;    //Lista de medicamentos
  
  Future<void> load() async {             
    List l = await data.loadDrugsJsonData(); // Uma funcao assincrona que aguarda a busca as informacoes na lista Drugs
    setState(() {                           
      medicamentos = l;   
     });
  }

  void initState(){ 
    this.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( 
      length: 2,
      child : Scaffold(
        appBar: AppBar(  
          backgroundColor: this.backgroundColor,
          title: Text('Cardio Help'),
          bottom: TabBar( //Exibe as tabs da home 
            tabs: [
              Tab(text: 'Medicamentos'),
              Tab(text: 'Info'),
              ],
          ),
        ),
        body: TabBarView( 
          children: [
            DrugListTab(
              medicamentos: this.medicamentos,
              backgroundColor: this.backgroundColor),
            InfoTab(),
          ],
        ),
      ),
    );
  }
}
