import 'package:auth_login/screens/home_page.dart';
import 'package:auth_login/authenticate/sign_in.dart';
import 'package:auth_login/authenticate/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Login',
      theme: ThemeData(),
      home: HomePage(),
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/signin': (BuildContext context) => SignIn(),
        '/signup': (BuildContext context) => SignUp(),
      },
    );
  }
}
