import 'package:alarm/screens/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:alarm/screens/signin.dart';
import 'package:alarm/screens/signup.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}