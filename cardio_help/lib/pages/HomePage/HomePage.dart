import 'package:flutter/material.dart';
import 'package:cardio_help/objects/database.dart'; 
import 'package:cardio_help/pages/DrugsPage/drugsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Database data = new Database();
  List medicamentos;    //Lista de medicamentos
  
  Future<void> load() async {
    List l = await data.loadDrugsJsonData();
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
    print(this.medicamentos);
    return DefaultTabController(
      length: 2,
      child : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Cardio Help'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Medicamentos'),
              Tab(text: 'Info'),
              ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder( //Gerador de itens da lista
              itemBuilder: (context, index) => ListTile(
                title: Text(medicamentos[index]["name"]),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DrugsPage(medicamento: medicamentos[index])
                      )
                  );
                },
              ),
              itemCount: medicamentos.length,
            ),
            Icon(Icons.info),
          ],
        ),
      ),
    );
  }
}
