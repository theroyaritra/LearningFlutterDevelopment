import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Name : Aritra Roy, Email : roy20042000@gmail.com";
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the title")
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter course by " + name),
          ),
        ),      
      drawer: Drawer(),
    );
  }
}