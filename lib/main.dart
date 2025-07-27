import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),
      initialRoute: "/home", // by default start with home screen
      routes: {
        "/": (context)=> LoginPage(), // use to move to next screen
        "/home": (context)=> HomePage(),
        "/login": (context)=>LoginPage(),// move to Login Screen/ page
      },
    );
    //In Day 3 we have learned class,function,Routes

  }
}
