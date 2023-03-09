import 'dart:async';

import 'package:basic1/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  // SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 4) , (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "Hello")));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.green[100]),
        child: Center(
            child: Text("ARTICO",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 21))),
      ),
    );
  }
}
