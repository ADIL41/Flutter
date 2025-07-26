import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int day = 30;
  final String name = "Muhammad Adil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Chpater 1')),
      ),
      body: Center(
        child: Text(
          'flutter 30 days course',
          style: TextStyle(color: Colors.purple),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
