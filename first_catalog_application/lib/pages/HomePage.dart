import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = " Mr. Aritra Roy";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog Application")
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter course by " + name),
          ),
        ),      
      drawer: const MyDrawer(),
    );
  }
}