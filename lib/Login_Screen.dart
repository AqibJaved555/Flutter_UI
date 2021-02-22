import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui/ForgotPassword.dart';
import 'package:flutter_ui/Register_Screen.dart';

class LogIn_Screen extends StatefulWidget {
  @override
  _LogIn_ScreenState createState() => _LogIn_ScreenState();
}

class _LogIn_ScreenState extends State<LogIn_Screen> {
  GlobalKey<ScaffoldState> _profileScaffoldKey = new GlobalKey<ScaffoldState>();

  TextEditingController _controller = TextEditingController();
  TextEditingController _textEditingController = TextEditingController();

  bool _passwordVisible = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
          backgroundColor: Color(0xffF2F2F2),
          key: _profileScaffoldKey,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
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
                        image: AssetImage("images/logo.png"),
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                      ),
                    ),
                    Positioned(
                        top: 240,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: NeumorphicText(
                          "UI Design",
                          style: NeumorphicStyle(depth: 4, color: Colors.black),
                          textStyle: NeumorphicTextStyle(fontSize: 35.0),
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
                              BoxShadow(
                                  color: Color(0xffE69900),
                                  offset: Offset(3, 3)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: TextFormField(
                            controller: _textEditingController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                              labelText: "abc@gmail.com",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 400,
                      left: 10,
                      width: MediaQuery.of(context).size.width - 25,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(32.0),
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffE69900),
                                  offset: Offset(3, 3)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: TextFormField(
                            obscureText: !_passwordVisible,
                            controller: _controller,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Theme.of(context).primaryColorDark,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              prefixIcon: Icon(Icons.lock),
                              border: InputBorder.none,
                              labelText: "password",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 463,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: GestureDetector(
                          onTap: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => Forgot_Password());
                            Navigator.pushReplacement(context, route);
                          },
                          child: NeumorphicText(
                            "Forgot password",
                            style: NeumorphicStyle(
                                depth: 4, color: Colors.black54),
                            textStyle: NeumorphicTextStyle(fontSize: 14.0),
                          ),
                        ))),
                    Positioned(
                      top: 530,
                      left: 15,
                      width: MediaQuery.of(context).size.width - 25,
                      child: GestureDetector(
                        onTap: () {
                          debugPrint("hi");
                        },
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xffE69900),
                              borderRadius: BorderRadius.circular(32.0),
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffFAFAFA),
                                    offset: Offset(4, 5)),
                              ]),
                          child: Center(
                              child: Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 640,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NeumorphicText(
                              "Don't have an account?",
                              style: NeumorphicStyle(
                                  depth: 4, color: Colors.black54),
                              textStyle: NeumorphicTextStyle(fontSize: 14.0),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Register_Screen());
                                Navigator.pushReplacement(context, route);
                              },
                              child: NeumorphicText(
                                "Create Account",
                                style: NeumorphicStyle(
                                    depth: 4, color: Color(0xffE69900)),
                                textStyle: NeumorphicTextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
