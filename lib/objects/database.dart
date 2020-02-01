import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Database { //leitura do arquivo .json que contem a lista de medicamentos
  Future loadDrugsJsonData() async{
    var listData = await rootBundle.loadString("lib/databases/drugs/drugs.json");
    return json.decode(listData);
  }
}