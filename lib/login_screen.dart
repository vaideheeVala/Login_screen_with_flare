import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color colorTheme= Color.fromRGBO(73, 83, 153, 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.8,
                    child:FlareActor(
                      "images/background_flow.flr",
                      animation: "Flow",
                      fit: BoxFit.fitWidth,
                    )
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                      child: Row(
                        children: <Widget>[
                          new Padding(
                            padding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                            child: Icon(
                              Icons.person_outline,
                              color: colorTheme,
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 1.0,
                            color: Colors.grey.withOpacity(0.5),
                            margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                          ),
                          new Expanded(
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                      child: Row(
                        children: <Widget>[
                          new Padding(
                            padding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                            child: Icon(
                              Icons.lock_open,
                              color: colorTheme,
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 1.0,
                            color: Colors.grey.withOpacity(0.5),
                            margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                          ),
                          new Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      padding: const EdgeInsets.only(left: 70.0, right: 70.0),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: FlatButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0)),
                              splashColor:  colorTheme,
                              color:  colorTheme,
                              child: new Row(
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  new Expanded(
                                    child: Container(),
                                  ),
                                  new Transform.translate(
                                    offset: Offset(15.0, 0.0),
                                    child: new Container(
                                      padding: const EdgeInsets.all(5.0),
                                      child: FlatButton(
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                            new BorderRadius.circular(28.0)),
                                        splashColor: Colors.white,
                                        color: Colors.white,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color:  colorTheme,
                                        ),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: Container(
                             // padding: const EdgeInsets.only(left: 20.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Don't have an account? Sign Up",
                                style: TextStyle(color:  colorTheme),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
      rotation: 0.0,
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}