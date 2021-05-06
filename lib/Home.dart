import 'package:easy_food/Constants.dart';
import 'package:easy_food/Layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: MainLayout(
        child: Container(
          child: Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}
