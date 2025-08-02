import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      initialRoute: MyRoutes.homeRoute, // by default start with home screen
      routes: {
        MyRoutes.loginRoute: (context) =>
            LoginPage(), // use to move to next screen
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
    //In Day 3 we have learned class,function,Routes
  }
}
