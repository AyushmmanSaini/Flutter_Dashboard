//import 'package:dashboard/Database/DashboardPieClass.dart';
//import 'package:dashboard/Database/Database.dart';
//import 'package:dashboard/Database/DashboardPieClass.dart';
import 'package:dashboard/Database/Database.dart';
//import 'package:dashboard/Database/PiechartDB/SchoolDB.dart';
//import 'package:dashboard/widget/Charts/Pie_Charts/piechart_school.dart';
import 'package:dashboard/widget/Charts/Pie_Charts/piechart_student.dart';
import 'package:flutter/material.dart';
//import 'dart:convert';

class PieColumnStudent extends StatelessWidget {
  //final String title;
  //final num number;
  //const PieColumn(this.title, this.number);

  //PieClass fact = PieClass.fromJson(list[0]);
  final String schl = Database(3).getData().toString();
  //PieClass fact = PieClass.fromJson(schl);
  //print(schl);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Text(
            schl[0],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
        Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Number of $schl',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "247853688",
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: PieChartStudent(),
        )
      ],
    );
  }
}
