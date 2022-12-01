import 'package:challeng2/Button.dart';

import 'package:challeng2/buttons.dart';

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
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Course",
          ),
          actions: <Widget>[Icon(Icons.check)],
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/4.png'),
                  Text(
                    "Picture",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 170),
                    child: Center(
                      child: Text(
                        "data",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 170),
                    child: Center(
                      child: Text(
                        "data",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  buttons(
                    text1: "Show Alert",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  button(
                    text1: "Settings",
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
