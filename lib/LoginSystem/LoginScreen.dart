import 'package:easy_food/Layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants.dart';
import '../Constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username;
  String _password;

  final userKey = GlobalKey<FormState>();
  final passwordKey = GlobalKey<FormState>();

  Form myForm(String name, var key) {
    return Form(
      key: key,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: TextFormField(
          onChanged: (val) {
            if (name == "Username") {
              _username = val;
            } else {
              _password = val;
            }
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Required";
            }
            return null;
          },
          style: TextStyle(
              fontFamily: "Times New Roman", fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            
              hintText: name,
              hintStyle: TextStyle(
                color:Colors.black54,
                  fontFamily: "Times New Roman",
                  fontSize: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MAIN_COLOR,
      body: Center(
        child: Container(
          width: size.width * 0.5,
          height: size.height * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.green.shade300,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Login",
                  style:
                      GoogleFonts.pacifico(color: Colors.white, fontSize: 60)),
              myForm("Username", userKey),
              myForm("Password", passwordKey),
              ElevatedButton(
                onPressed: () {
                  if (userKey.currentState.validate() &&
                      passwordKey.currentState.validate()) {
                    print(_username + " " + _password);
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 60)),
                  backgroundColor: MaterialStateProperty.all(MAIN_COLOR),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
