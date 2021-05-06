import 'package:easy_food/Constants.dart';
import 'package:easy_food/Routs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setWindowMinSize(const Size(900, 600));
  setWindowMaxSize(const Size(900, 600));
  setWindowTitle("Easy Food");
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
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white70,
            hoverColor: Colors.white70,
            focusColor: Colors.white70,
            filled: true),
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
