import 'package:easy_food/Home.dart';
import 'package:easy_food/LoginSystem/LoginScreen.dart';
import 'package:easy_food/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case LOGIN:
      return CupertinoPageRoute(builder: (_) => LoginScreen());
    case ACTIVE_ORDER:
      return CupertinoPageRoute(builder: (_) => LoginScreen());
    case ADD_NEW:
      return CupertinoPageRoute(builder: (_) => LoginScreen());
    case ADD_ADMIN:
      return CupertinoPageRoute(builder: (_) => LoginScreen());
    case STATISTICAL_REPORT:
      return CupertinoPageRoute(builder: (_) => LoginScreen());
    case HOME_PAGE:
      return CupertinoPageRoute(builder: (_) => Home());
    default:
      return CupertinoPageRoute(builder: (_) => LoginScreen());
  }
}
