//import 'package:dashboard/Database/Database.dart';
import 'package:dashboard/Database/Database.dart';
import 'package:dashboard/widget/Content_Bar/content_bar.dart';
import 'package:dashboard/widget/header_bar/header_bar.dart';
import 'package:dashboard/widget/navigation_bar/navigation_bar..dart';
import 'package:flutter/material.dart';

/*
class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[HeaderBar(), NavigationBar(), ContentBar()],
      ),
    );
  }
}*/
//import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<HomeView> {
  ScrollController _controller;
  double _offset = 0;

  @override
  void initState() {
    //Database().getData();
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: <Widget>[
                  Container(
                    //height: MediaQuery.of(context).size.height,
                    //width: MediaQuery.of(context).size.width,
                    child: HeaderBar(),
                    //color: Colors.black,
                  ),
                  Container(
                    //height: MediaQuery.of(context).size.height,
                    //width: MediaQuery.of(context).size.width,
                    child: NavigationBar(),
                    //color: Colors.red,
                  ),
                  Container(
                    height: 1500,
                    width: MediaQuery.of(context).size.width,
                    child: ContentBar(),
                    //color: Colors.green,
                  ),
                  /*Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.blue,
                  ),*/
                ],
              ),
            ),
          ),
          //Scroll bar
          Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height,
              width: 20.0,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width - 20.0),
              decoration: BoxDecoration(color: Colors.black12),
              child: Container(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  child: Container(
                    height: 40.0,
                    width: 15.0,
                    margin:
                        EdgeInsets.only(left: 5.0, right: 5.0, top: _offset),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                  ),
                  onVerticalDragUpdate: (dragUpdate) {
                    _controller.position
                        .moveTo(dragUpdate.globalPosition.dy * 3.5);

                    setState(() {
                      if (dragUpdate.globalPosition.dy >= 0) {
                        _offset = dragUpdate.globalPosition.dy;
                      }
                      print(
                          "View offset ${_controller.offset} scroll-bar offset ${_offset}");
                    });
                  },
                ),
              )),
        ],
      ),
    );
  }
}
