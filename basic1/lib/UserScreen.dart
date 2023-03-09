// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basic1/main.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  var userdata;
  UserScreen({super.key, this.userdata});

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
              child: Text("Profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
            ),
            Container(
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.person)),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Subham", style: TextStyle(fontSize: 19 , fontWeight: FontWeight.w400)),
                        Text("subhammahanty235@gmail.com" , style:TextStyle(color:Colors.black38))
                      ],) 
                    )
                    //  Text("Subham" , style:TextStyle())
                  ],
                )),
            Container(
              height: 400,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10)),

              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                // MainAxisAlignment:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(padding:EdgeInsets.all(10),  child: Row(children:[Icon(Icons.sports_baseball_rounded , color: Colors.blue , size: 20) , Text(" Name : Subham Mahanty" ,style:TextStyle(fontSize: 18 , ) )],) ,),
                  Divider(height: 5,),
                  Padding(padding:EdgeInsets.all(10),  child: Row(children:[Icon(Icons.sports_baseball_rounded , color: Colors.blue , size:20) , Text(" Age : 20" ,style:TextStyle(fontSize: 18 , ) )],) ,),
                   Divider(height: 5,),
                  Padding(padding:EdgeInsets.all(10),  child: Row(children:[Icon(Icons.sports_baseball_rounded , color: Colors.blue , size:20) , Text(" Gender : Male" ,style:TextStyle(fontSize: 18 , ) )],) ,),
                   Divider(height: 5,),
                  Padding(padding:EdgeInsets.all(10),  child: Row(children:[Icon(Icons.sports_baseball_rounded , color: Colors.blue , size:20) , Text(" Country : India" ,style:TextStyle(fontSize: 18 , ) )],) ,),
                   Divider(height: 5,),
                  Padding(padding:EdgeInsets.all(10),  child: Row(children:[Icon(Icons.sports_baseball_rounded , color: Colors.blue , size:20) , Text(" Hobbies : Subham Mahanty" ,style:TextStyle(fontSize: 18 , ) )],) ,),
                  //  Divider(height: 5,),
                  // Padding(padding:EdgeInsets.all(10),  child: Row(children:[Icon(Icons.sports_baseball_rounded , color: Colors.blue , size:20) , Text("Name : Subham Mahanty" ,style:TextStyle(fontSize: 18 , ) )],) ,),
                ],)
              ],)
            )
          ],
        ));
  }
}
