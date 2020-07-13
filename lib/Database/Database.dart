import 'dart:async';

import 'package:dashboard/Database/DashboardPieClass.dart';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Database {
  final num number;
  const Database(this.number);

  Future getData() async {
    var url = 'http://goatish-cupful.000webhostapp.com/get.php';
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    //return (response.body);
    //print(response.statusCode);
    List<dynamic> list = json.decode(response.body);
    if (number == 1) {
      PieClass fact = PieClass.fromJson(list[0]);
      return fact.name.toString();
    } else if (number == 2) {
      PieClass fact = PieClass.fromJson(list[1]);
      return fact.name.toString();
    } else if (number == 3) {
      PieClass fact = PieClass.fromJson(list[2]);
      return fact.name.toString();
    }
    //return (fact);
    //return ([fact.name, fact.govt, fact.aided, fact.pvt, fact.oth]);
    //var ci = new PieList.fromJson(data);
    //print(fact);
  }
}
