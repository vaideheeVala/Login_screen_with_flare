import 'package:flutter/material.dart';
import 'package:flutterloginanimaion/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Animation',
      theme: ThemeData(
               primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}


