import 'package:easy_food/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  MainLayout({this.child});

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  Widget _listTile({String name, Size size, Color color, IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => {
            if (name == "Active Orders")
              {Navigator.pushNamed(context, ACTIVE_ORDER)}
            else if (name == "Add New Food")
              {Navigator.pushNamed(context, ADD_NEW)}
            else if (name == "Add Admin")
              {Navigator.pushNamed(context, ADD_ADMIN)}
            else if (name == "Statistical Reports")
              {Navigator.pushNamed(context, STATISTICAL_REPORT)}
            else if (name == "Logout")
              {Navigator.pushNamed(context, LOGIN)}
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(color),
            minimumSize: MaterialStateProperty.all(Size(
              size.width * 0.3,
              size.height * 0.1,
            )),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontSize: 20),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.white,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color _buttonColor = MAIN_COLOR;
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: MAIN_COLOR,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: MAIN_COLOR,
                        width: size.width * 0.16,
                        child: Image.asset(
                          'assets/main_icon.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Text(
                          "Easy Food",
                          style: GoogleFonts.pacifico(
                            color: Colors.white,
                            fontSize: 38,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.white),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _listTile(
                          name: "Active Orders",
                          size: size,
                          color: _buttonColor,
                          icon: Icons.shopping_cart),
                      _listTile(
                          name: "Add New Food",
                          size: size,
                          icon: Icons.add,
                          color: _buttonColor),
                      _listTile(
                          name: "Add Admin",
                          size: size,
                          color: _buttonColor,
                          icon: Icons.add),
                      _listTile(
                          name: "Statistical Reports",
                          size: size,
                          color: _buttonColor,
                          icon: Icons.report),
                      _listTile(
                          name: "Logout",
                          size: size,
                          color: _buttonColor,
                          icon: Icons.exit_to_app),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        VerticalDivider(width: 5, thickness: 5),
        Expanded(
          flex: 7,
          child: Container(
            color: MAIN_COLOR,
            child: widget.child,
          ),
        )
      ],
    );
  }
}
