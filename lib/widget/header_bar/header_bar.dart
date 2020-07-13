import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      //height: 80,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  'assets/emblem.jpg',
                  height: 45,
                  width: 45,
                ),
              ),
              SizedBox(
                height: 90,
                width: 440,
                child: Text(
                  '\nDepartment of School Education & Literacy\nMinistry of Human Resource Development Government of India',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 21, height: 1.0),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              Text(
                'Student Education Dashboard',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ])
          ]),
    );
  }
}
