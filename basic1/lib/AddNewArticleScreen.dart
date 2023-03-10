// import 'package:flutter/cupertino.dart';

// ignore_for_file: prefer_const_constructors

// import 'dart:html';

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
                    child: const Icon(Icons.other_houses_rounded))
              ],
            )),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Add New Article",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Column(
              children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the Subject',
                    helperText: "max length is 20 characters"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write your Article',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10),
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  // color: Colors.green[50],
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.blue, width: 1.5)),
              child: TextButton(
                onPressed: () {},
                child: Text("Save",
                    style: TextStyle(fontWeight: FontWeight.w600)),
              ),
            )
              ],
            ),
            Container()
          ],
        ));
  }
}
