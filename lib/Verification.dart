import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui/ForgotPassword.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Route route =
            MaterialPageRoute(builder: (context) => Forgot_Password());
        Navigator.pushReplacement(context, route);
        return false;
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
                    right: 1,
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
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 12.0,
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
                      image: AssetImage("images/lock_Img.png"),
                      width: MediaQuery.of(context).size.width,
                      height: 190,
                    ),
                  ),
                  Positioned(
                      top: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: NeumorphicText(
                        "Verification",
                        style: NeumorphicStyle(depth: 4, color: Colors.black),
                        textStyle: NeumorphicTextStyle(fontSize: 35.0),
                      ))),
                  Positioned(
                    top: 320,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: NeumorphicText(
                        "Enter OTP code sent to your number",
                        style: NeumorphicStyle(depth: 4, color: Colors.black),
                        textStyle: NeumorphicTextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 345,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: NeumorphicText(
                        "+923371234567",
                        style: NeumorphicStyle(depth: 4, color: Colors.black),
                        textStyle: NeumorphicTextStyle(fontSize: 17.0),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 400,
                    left: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    color: Colors.black38,
                                    blurRadius: 2),
                              ]),
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    color: Colors.black38,
                                    blurRadius: 2),
                              ]),
                          child: Center(
                            child: Text(
                              "6",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    color: Colors.black38,
                                    blurRadius: 2),
                              ]),
                          child: Center(
                            child: Text(
                              "7",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade300,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    color: Colors.black38,
                                    blurRadius: 2),
                              ]),
                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //

                  Positioned(
                    top: 500,
                    left: 20,
                    width: MediaQuery.of(context).size.width - 35,
                    child: GestureDetector(
                      onTap: () {
                        debugPrint("hi");
                      },
                      child: Container(
                        height: 60,
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
                          "NEXT",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                      ),
                    ),
                  ),
                  //Resend
                  Positioned(
                      top: 610,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: NeumorphicText(
                        "Resend",
                        style: NeumorphicStyle(depth: 4, color: Colors.orange),
                        textStyle: NeumorphicTextStyle(fontSize: 25.0),
                      ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
