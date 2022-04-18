// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://avatars.githubusercontent.com/u/96044513?v=4";
    return Drawer(
      child: Container(
        color:Color.fromARGB(255, 151, 245, 223),
        child: ListView(
          padding:EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding:EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color:Colors.amber),
                accountName: Text("Welcome, Mr. Aritra Roy", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16),),
                accountEmail:  Text("theroyaritra@gmail.com"),
                margin: EdgeInsets.zero,
                //currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color:Color.fromARGB(255, 240, 119, 6),
              ),
              title:Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 235, 84, 9)),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color:Color.fromARGB(255, 240, 119, 6),
              ),
              title:Text("Profile", style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 235, 84, 9)),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color:Color.fromARGB(255, 240, 119, 6),
              ),
              title:Text("Contact Me", style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 235, 84, 9)),),
            )
          ],
        ),
      ),
    );
  }
}