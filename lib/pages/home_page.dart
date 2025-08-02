import 'package:flutter/material.dart';
import 'package:untitled/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int day = 30;
  final String name = "Muhammad Adil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home Page'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Well come to Home page',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Google font',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
