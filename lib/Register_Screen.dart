import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui/ForgotPassword.dart';
import 'package:flutter_ui/Login_Screen.dart';

class Register_Screen extends StatefulWidget {
  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  TextEditingController _nameEditcontroller = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _phoneEditingController = TextEditingController();
  bool _visiblePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _visiblePassword = false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Route route = MaterialPageRoute(builder: (context) => LogIn_Screen());
        Navigator.pushReplacement(context, route);
        return true;
      },
      child: Scaffold(
          backgroundColor: Color(0xffF2F2F2),
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
                      top: 65,
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
                      top: 70,
                      child: Image(
                        image: AssetImage("images/logo.png"),
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                      ),
                    ),
                    Positioned(
                        top: 230,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: NeumorphicText(
                          "UI Design",
                          style: NeumorphicStyle(depth: 4, color: Colors.black),
                          textStyle: NeumorphicTextStyle(fontSize: 35.0),
                        ))),
                    //name
                    Positioned(
                      top: 300,
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
                            controller: _nameEditcontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                              labelText: "AqibJaved",
                            ),
                          ),
                        ),
                      ),
                    ),
                    //password
                    Positioned(
                      top: 360,
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
                            obscureText: !_visiblePassword,
                            controller: _passwordEditingController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _visiblePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Theme.of(context).primaryColorDark,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _visiblePassword = !_visiblePassword;
                                  });
                                },
                              ),
                              prefixIcon: Icon(Icons.person),
                              labelText: "password",
                            ),
                          ),
                        ),
                      ),
                    ),
                    //mail id
                    Positioned(
                      top: 418,
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
                            controller: _emailEditingController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: InputBorder.none,
                              labelText: "Mail id",
                            ),
                          ),
                        ),
                      ),
                    ),
                    //phone number
                    Positioned(
                      top: 475,
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
                            controller: _phoneEditingController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: InputBorder.none,
                              labelText: "Mobile Number",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 575,
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
                                    offset: Offset(3, 3)),
                              ]),
                          child: Center(
                              child: Text(
                            "CREATE",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 650,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NeumorphicText(
                              "Already have an account? ",
                              style: NeumorphicStyle(
                                  depth: 4, color: Colors.black54),
                              textStyle: NeumorphicTextStyle(fontSize: 14.0),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => LogIn_Screen());
                                Navigator.pushReplacement(context, route);
                              },
                              child: NeumorphicText(
                                " Login",
                                style: NeumorphicStyle(
                                    depth: 4, color: Color(0xffE69900)),
                                textStyle: NeumorphicTextStyle(fontSize: 14.0),
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
