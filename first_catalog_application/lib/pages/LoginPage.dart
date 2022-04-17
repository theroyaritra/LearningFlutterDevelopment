import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      /*child:Center(
        child:Text("Login Page", 
        style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 37, 25, 206), backgroundColor: Color.fromARGB(255, 237, 240, 71), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ),*/
      color: Colors.white,
      child: Column(children: [
        Image.asset("assets/images/login_image.png",
            height: 300, width: 300, fit: BoxFit.contain),
        const SizedBox(height: 10),
        const Text(
          "Welcome to the Login Page",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Padding( //padding: EdgeInsets.symetric(vertical:20,horizontal:40)
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                      labelText: "User Name", hintText: "Enter your username")),
              TextFormField(
                obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Password", hintText: "Enter your password")),
              SizedBox(height:20),
              ElevatedButton(
                style:TextButton.styleFrom(),
                child: Text("Sign In"),
                onPressed: () {
                  print("Welcome to the Catalog App by Aritra Roy");
                },)
            ],
          ),
        ),
      ]),
    );
  }
}
