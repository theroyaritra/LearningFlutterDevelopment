import 'dart:ffi';

import 'package:first_catalog_application/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name="";
  bool ChangeButton=false;
  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()){
    setState (() {
      ChangeButton=true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context,MyRoutes.homeRoute);
      setState(() {
      ChangeButton=false;
    });
  }
}
  Widget build(BuildContext context) {
    return Material(
      /*child:Center(
        child:Text("Login Page", 
        style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 37, 25, 206), backgroundColor: Color.fromARGB(255, 237, 240, 71), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ),*/
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key:_formKey,
          child: Column(children: [
            Image.asset("assets/images/login_image.png",
                height: 300, width: 300, fit: BoxFit.contain),
            SizedBox(height: 10),
            Text(
              "Welcome to the Login Page : $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              //padding: EdgeInsets.symetric(vertical:20,horizontal:40)
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter your username"),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name=value;
                      setState(() {
                        //name=value;
                      });
                      },
                          ),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password"),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        }
                        else if(value.length<=5){
                          return "Wrong Password! Password length should be at least 6.";
                        }
                        return null;
                      },
                          ),
                  SizedBox(height: 40),
                  Material(
                    color:Color.fromARGB(255, 123, 61, 231),
                    borderRadius: BorderRadius.circular(ChangeButton ? 30:8),
                    child: InkWell(
                      splashColor: Colors.orange,
                      onTap: () => moveToHome(context), //async{ // For using await keyword, async keyword is necessary here
                        /*setState(() {
                          ChangeButton=true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context,MyRoutes.homeRoute);
                        setState(() {
                          ChangeButton=false;
                        });*/
                      //},
                      child: AnimatedContainer(
                        duration:const Duration(seconds: 1),
                        width: ChangeButton ? 60 : 120, height:50, //color:Color.fromARGB(255, 123, 61, 231),
                        alignment: Alignment.center,
                        child: ChangeButton ? Icon(Icons.done,color:Colors.white):  Text("Sign In",
                        style:TextStyle(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 20,)
                        ),
                        /*decoration: const BoxDecoration(
                          color:Color.fromARGB(255, 123, 61, 231),
                          borderRadius: BorderRadius.circular(ChangeButton ? 30:8),
                        ),*/
                      ),
                    ),
                  )
                  /*ElevatedButton(
                    style: TextButton.styleFrom(minimumSize: Size(100,40)),
                    child: const Text("Sign In", style:TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print("Welcome to the Catalog App by Aritra Roy");
                      Navigator.pushNamed(context,MyRoutes.homeRoute);
                    },
                  )*/
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
