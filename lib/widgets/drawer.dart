import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                accountName: Text('M ADIL'),
                accountEmail: Text("asdah@.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg',
                  ),
                ),
                margin: EdgeInsets.zero,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                'Home',
                textScaler: TextScaler.linear(1.5),
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                'Profile',
                textScaler: TextScaler.linear(1.5),
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Settings',
                textScaler: TextScaler.linear(1.5),
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text(
                'Logout',
                textScaler: TextScaler.linear(1.5),
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MyRoutes.loginRoute,
                ); //when click on person icon in drawer it goes to login page
              },
            ),
          ],
        ),
      ),
    );
  }
}
