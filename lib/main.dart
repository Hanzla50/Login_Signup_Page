import 'package:flutter/material.dart';
import 'package:smart_kids/pages/home_page.dart';
import 'package:smart_kids/pages/login_page.dart';
import 'package:smart_kids/pages/sign_up.dart';
import 'package:smart_kids/routes.dart';
import 'package:smart_kids/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home: LoginPage(),
      themeMode: ThemeMode.light,
      routes: {
       "/": (context) => Startpage(),
        "/signin": (context) => LoginPage(),
        "/login": (context) => homePage(),


      },
    );
    
  }
}