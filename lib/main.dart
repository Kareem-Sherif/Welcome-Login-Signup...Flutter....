import 'package:flutter/material.dart';
// import 'package:flutter_application_4/constant/constant.dart';
import 'package:flutter_application_4/routes/login.dart';
import 'package:flutter_application_4/routes/signup.dart';
import 'package:flutter_application_4/routes/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/' : (context) => Welcome(),
        '/Login' : (context) => Login(),
        '/Signup' : (context) => Signup(),
      },
    );
  }
}
