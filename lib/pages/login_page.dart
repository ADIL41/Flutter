import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:  Column(
        children: [
          Image.asset('assets/images/login_image.png'),
          SizedBox(height: 25),// make distance between image and text
          Text('Well Come'),
          SizedBox(height:25,),
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  label:Icon(Icons.person),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "password",


                ),
              ),
            ],
          )
        ],

      ),
    );
  }
}
