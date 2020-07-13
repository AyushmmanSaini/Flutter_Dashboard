import 'dart:async';

import 'package:dashboard/Database/DashboardPieClass.dart';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentDb {
  //final String type;
  //const StudentDb(this.type);

  Future getData(String type) async {
    var url = 'http://goatish-cupful.000webhostapp.com/get.php';
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    //return (response.body);
    //print(response.statusCode);
    List<dynamic> list = json.decode(response.body);
    if (type == 'govt') {
      PieClass fact = PieClass.fromJson(list[2]);
      return fact.govt.toString();
    } else if (type == 'aided') {
      PieClass fact = PieClass.fromJson(list[2]);
      return fact.aided.toString();
    } else if (type == 'pvt') {
      PieClass fact = PieClass.fromJson(list[2]);
      return fact.pvt.toString();
    } else if (type == 'oth') {
      PieClass fact = PieClass.fromJson(list[2]);
      return fact.oth.toString();
    }
    //return (fact);
    //return ([fact.name, fact.govt, fact.aided, fact.pvt, fact.oth]);
    //var ci = new PieList.fromJson(data);
    //print(fact);
  }
}
