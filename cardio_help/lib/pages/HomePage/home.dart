import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
            Icon(Icons.local_hospital),
            Icon(Icons.info),
          ],
        ),
      ),
    );
  }
}