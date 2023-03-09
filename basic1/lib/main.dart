import 'package:basic1/AddNewArticleScreen.dart';
import 'package:basic1/SplashScreen.dart';
import 'package:basic1/UserScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [];
    data.add({
      'name': 'Subham',
      'article':
          "In my previous article, I had discussed the difference between Stateful and Stateless Widgets. You have to apply that concept to understand the working of this Counter App."
    });
    data.add({
      'name': 'ProCoder',
      'article':
          "In my previous article, I had discussed the difference between Stateful and Stateless Widgets. You have to apply that concept to understand the working of this Counter App."
    });
    data.add({
      'name': 'Noob',
      'article':
          "In my previous article, concept to understand the working of this Counter App."
    });
    data.add({
      'name': 'Quikkee',
      'article':
          "In my previouo apply that concept to understand the working of this Counter App."
    });
    data.add({
      'name': 'Alice',
      'article': "In my previous article, I had discussed the difApp."
    });
    data.add({
      'name': 'Alxcoder',
      'article':
          "In my previous article, I had discussed the difference between Stateful and StatelessIn my previous article, I had discussed the difference between Stateful and Stateless Widgets. You have to apply that concept to understand the working of this Counter App. Widgets. You have to apply that concept to understand the working of this Counter App."
    });
    data.add({
      'name': 'DartExpert',
      'article':
          "In my previous article, I had discuIn my previous article, I had discussed the difference between Stateful and Stateless Widgets. You have to apply that concept to understand the working of this Counter App.stand the working of this Counter App."
    });

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
                              builder: (context) => UserScreen(
                                    userdata: data[0],
                                  )));
                    },
                    child: const Icon(Icons.menu_rounded)),
              
            ],
          )),
      body: (Column(
        children: [
          Container(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 150,
                      margin: const EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'My Posts',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Global',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                    )
                  ])),

          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(12)),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return (Container(
                    // height: 100,
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.fromLTRB(9, 5, 3, 5),
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.person_add_alt_1_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Text(data[index]['name'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16))
                          ],
                        ),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(data[index]['article']),
                        )
                      ],
                    ),
                  ));
                },
                itemCount: data.length,
              )
              // child: ListView(
              //   children: [
              //     Container(
              //       // height: 100,
              //       margin:
              //           const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(10)),

              //       child: Column(
              //         children: [
              //           Row(
              //             children: [
              //               Container(
              //                 padding: const EdgeInsets.all(6),
              //                 margin: const EdgeInsets.fromLTRB(9, 5, 3, 5),
              //                 decoration: BoxDecoration(
              //                     color: Colors.blueAccent,
              //                     borderRadius: BorderRadius.circular(30)),
              //                 child: const Icon(
              //                   Icons.person_add_alt_1_rounded,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const Text('Subham',
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.w500, fontSize: 16))
              //             ],
              //           ),
              //           const Divider(),
              //           Container(
              //             padding: const EdgeInsets.all(10),
              //             child: const Text(
              //                 "In my previous article, I had discussed the differenc In my previous article, I had discussed the difference between Stateful and Stateless Widgets. You have to apply that concept to understand the working of this Counter App.e between Stateful and Stateless Widgets. You have to apply that concept to understand the working of this Counter App."),
              //           )
              //         ],
              //       ),
              //     ),

              //   ],
              // ),
              )

          // Posts section ,
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddnewArticleScreen()));
        },
        tooltip: "Add Note",
        child: const Icon(Icons.add_card),
      ),
    );
  }
}
