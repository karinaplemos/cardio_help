import 'package:cardio_help/pages/HomePage/Tabs/DrugListTab.dart';
import 'package:cardio_help/pages/HomePage/Tabs/InfoTab.dart';
import 'package:flutter/material.dart';
import 'package:cardio_help/objects/database.dart'; 
import 'package:cardio_help/theme/theme.dart' as theme;



class HomePage extends StatefulWidget { 

  @override  
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  Database data = new Database();               
  
  List drugs;    //Lista de medicamentos
  
  Future<void> load() async {             
    List l = await data.loadDrugsJsonData(); // Uma funcao assincrona que aguarda a busca as informacoes na lista Drugs
    setState(() {                           
      drugs = l;   
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
          backgroundColor: theme.backgroundColor,
          title: Text('Cardio Help'),
          bottom: TabBar( //Exibe as tabs da home 
            labelColor: theme.selectedColor,
            unselectedLabelColor: Colors.white70,
            indicatorColor: theme.selectedColor,
            tabs: [
              Tab(text: 'MEDICAMENTOS'),
              Tab(text: 'INFORMAÇÕES'),
              ],
          ),
        ),
        body: TabBarView( 
          children: [
            DrugListTab(drugs: this.drugs),
            InfoTab(),
          ],
        ),
      ),
    );
  }
}
