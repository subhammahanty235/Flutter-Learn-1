// import 'package:flutter/cupertino.dart';

// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:basic1/main.dart';
import 'package:flutter/material.dart';

class AddnewArticleScreen extends StatefulWidget {
  @override
  State<AddnewArticleScreen> createState() => _AddNewArticleState();
}

class _AddNewArticleState extends State<AddnewArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.green[50],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Artico',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MyHomePage(title: 'Flutter Demo Home Page')));
                    },
                    child: const Icon(Icons.home_max_rounded))
              ],
            )),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text("Add New Article",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600 ),),
            ),
            Container(
            //   child:Column(children: [
            //     // TextField(),
                
            //   ],)
            ),
            Container()

          ],
        ));
  }
}
