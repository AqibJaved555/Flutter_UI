import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui/Login_Screen.dart';
import 'package:flutter_ui/Verification.dart';


class Forgot_Password extends StatefulWidget {
  @override
  _Forgot_PasswordState createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Route route = MaterialPageRoute(builder: (context) => LogIn_Screen());
        Navigator.pushReplacement(context, route);
        return false;
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 00,
                left: 1,
                right: 2,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 16.0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 16.0,
                      ),
                    ],
                    color: Color(0xffE69900),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 12,
                right: 12,
                height: 150,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 16.0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 16.0,
                      ),
                    ],
                    color: Color(0xFFffffff),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              Positioned(
                top: 90,
                child: Image(
                  image: AssetImage("images/key.png"),
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                ),
              ),
              Positioned(
                  top: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: NeumorphicText(
                    "Forgot Password",
                    style: NeumorphicStyle(depth: 4, color: Colors.black),
                    textStyle: NeumorphicTextStyle(fontSize: 32.0),
                  ))),
              Positioned(
                top: 340,
                left: 10,
                width: MediaQuery.of(context).size.width - 25,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(32.0),
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(color: Color(0xffE69900), offset: Offset(3, 3)),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.phone),
                        labelText: "+923371234567",
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 470,
                left: 20,
                width: MediaQuery.of(context).size.width - 35,
                child: GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => Verification());
                    Navigator.pushReplacement(context, route);
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xffE69900),
                        borderRadius: BorderRadius.circular(32.0),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffFAFAFA), offset: Offset(4, 5)),
                        ]),
                    child: Center(
                        child: Text(
                      "NEXT",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
