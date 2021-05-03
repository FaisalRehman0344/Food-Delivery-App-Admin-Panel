import 'package:easy_food/LoginSystem/LoginScreen.dart';
import 'package:easy_food/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case LOGIN:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case ACTIVE_ORDER:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case ADD_NEW:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case ADD_ADMIN:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case STATISTICAL_REPORT:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    default:
      return MaterialPageRoute(builder: (_) => LoginScreen());
  }
}
