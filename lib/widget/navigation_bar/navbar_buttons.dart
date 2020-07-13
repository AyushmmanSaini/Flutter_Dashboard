import 'package:dashboard/view/home/home_view.dart';
import 'package:flutter/material.dart';

class NavBarButtons extends StatelessWidget {
  final String title;
  final num r, b, g;
  const NavBarButtons(this.title, this.r, this.g, this.b);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        );
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 287,
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color.fromARGB(255, r, g, b)),
        //padding: const EdgeInsets.,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
