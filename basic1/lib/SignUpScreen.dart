// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();


}
  class _SignUpScreenState extends State<SignUpScreen>{

    @override
    Widget build(BuildContext context){
      return 
      Scaffold(
        appBar: AppBar(
          title:const Text(
                  'Artico',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
        ),
        body: Container(
            // height:,
            decoration: BoxDecoration(
              color: Colors.green[100],
            ),
            child: Container(
                // height: 400,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   
                    Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            maxRadius: 50,
                            child: Text("Artico",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 30, 20, 5),
                            // margin: EdgeInsets.symmetric(
                            //     vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(),
                            child: TextField(
                              // controller: subjectController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email id',
                                // helperText: "max length is 20 characters"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(),
                            child: TextField(
                              // controller: subjectController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password',
                                // helperText: "max length is 20 characters"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(),
                            child: TextField(
                              // controller: subjectController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Confirm Password',
                                // helperText: "max length is 20 characters"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                                // color: Colors.green[50],
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: Colors.blue, width: 1.5)),
                            child: TextButton(
                              onPressed: () {
                                // _insertData(subjectController.text,
                                //     articleController.text);
                              },
                              child: Text("Create your account",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                            ),
                          )
                        ]),
                    Text("Log In",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ))));
      
    }

  }