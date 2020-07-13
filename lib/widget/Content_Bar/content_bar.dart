import 'package:dashboard/widget/Charts/bar_charts/bar_chart.dart';
import 'package:dashboard/widget/Content_Bar/Pie_Column/Pie_Cloumn_Teacher.dart';
import 'package:dashboard/widget/Content_Bar/Pie_Column/Pie_Column_School.dart';
import 'package:dashboard/widget/Content_Bar/Pie_Column/Pie_Column_Student.dart';
import 'package:flutter/material.dart';

class ContentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.greenAccent])),
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Column(children: [
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PieColumnSchool(),
                PieColumnTeacher(),
                PieColumnStudent(),
              ]),
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.fromLTRB(0, 20, 50, 0),
          child: Text('Source: UDISE+ 2018-19 (Provisional)',
              //textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
        ),
        Container(
          height: 500,
          width: 1150,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: ChartsDemo(),
        ),
        Container(
          height: 80,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 300,
          decoration: BoxDecoration(color: Color.fromARGB(255, 55, 23, 90)),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'MHRD',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'SE Shagun',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'UDISE +',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Repository',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'School GIS',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Samagra Shiksha',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 500,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
                  Text(
                    'This site is designed by Ayushman Saini for task of Intern',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
