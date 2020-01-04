import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Database {
  Future loadDrugsJsonData() async{
    var listData = await rootBundle.loadString("lib/databases/drugs/drugs.json");
    return json.decode(listData);
  }
}