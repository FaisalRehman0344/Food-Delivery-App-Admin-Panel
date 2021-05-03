import 'package:easy_food/Layout.dart';
import 'package:easy_food/Constants.dart';
import 'package:easy_food/LoginSystem/LoginScreen.dart';
import 'package:easy_food/Routs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Food',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: LOGIN,
      onGenerateRoute: (settings) => onGenerate(settings),
    );
  }
}

// Stream productsStream() async* {
  //   Uri uri = Uri();
  //   while (true) {
  //     await Future.delayed(Duration(milliseconds: 500));
  //     var someProduct = await http.get(uri);
  //     yield someProduct;
  //   }
  // }
