import 'package:dashboard/widget/navigation_bar/navbar_buttons.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      //width: 300,
      //padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //30, 102, 247
            NavBarButtons('All India Progress', 30, 102, 247),
            SizedBox(
              width: 1,
            ),
            NavBarButtons('States and UTs', 242, 48, 34),
            SizedBox(
              width: 1,
            ),
            NavBarButtons('Schemes', 128, 0, 128),
            SizedBox(
              width: 1,
            ),
            NavBarButtons('Autonomous Bodies', 232, 117, 16),
          ]),
    );
  }
}
