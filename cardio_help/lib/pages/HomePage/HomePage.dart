import 'package:flutter/material.dart';
import 'package:cardio_help/objects/database.dart'; 
import 'package:cardio_help/pages/DrugsPage/drugsPage.dart';
import 'package:cardio_help/theme/theme.dart' as theme;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Database data = new Database();
  List drugs;    //Lista de medicamentos
  
  Future<void> load() async {
    List l = await data.loadDrugsJsonData();
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
          bottom: TabBar(
            tabs: [
              Tab(text: 'MEDICAMENTOS'),
              Tab(text: 'INFORMAÇÕES'),
              ],
          ),
        ),
        body: TabBarView(
          children: [
            (this.drugs != null)?
            ListView.builder( //Gerador de itens da lista
              itemBuilder: (context, index) => ListTile(
                title: Text(this.drugs[index]["name"]),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){

                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DrugsPage(drug: this.drugs[index])
                      )
                  );
                },
              ),
              itemCount: this.drugs.length,
            ): Center(
              child: CircularProgressIndicator(),
            ),
            Icon(Icons.info),
          ],
        ),
      ),
    );
  }
}
