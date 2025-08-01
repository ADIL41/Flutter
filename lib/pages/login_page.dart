import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>(); // form is parent_of text_form field
  MoveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      ); //it wait and then move to next screen
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false; // when move back button changed
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        //to make scrollable the UI
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              (Image.asset('assets/images/hey.png', fit: BoxFit.cover)),
              SizedBox(height: 25), // make distance between image and text
              Text(
                'Well Come $name',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null; // Return null when validation passes
                      },
                      // method use in text_form_filed
                      onChanged: (value) {
                        name = value;
                        setState(
                          () {},
                        ); //its call the build method in stateful widget
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "password cannot be empty";
                        }
                        return null; // Return null when validation passes
                      },
                    ),
                    SizedBox(height: 50),
                    InkWell(
                      onTap: () => MoveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 40,
                        width: changedButton ? 65 : 120, // width change to 80
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(
                            changedButton ? 20 : 8,
                          ),
                        ),
                        child: changedButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
