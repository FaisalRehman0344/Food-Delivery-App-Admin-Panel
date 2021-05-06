import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 70),
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
                  color: Colors.black54,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text("Login",
                    style:
                        GoogleFonts.pacifico(color: Colors.white, fontSize: 60)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: myForm("Username", userKey),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: myForm("Password", passwordKey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (userKey.currentState.validate() &&
                        passwordKey.currentState.validate()) {
                      Navigator.of(context).pushNamed(HOME_PAGE);
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
