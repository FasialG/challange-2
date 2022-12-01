import 'package:flutter/material.dart';

class buttons extends StatefulWidget {
  const buttons({super.key, required this.text1});
  final String text1;

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.blue),
      child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                backgroundColor: Colors.white,
                actions: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 10,
                            blurStyle: BlurStyle.outer,
                            spreadRadius: 2,
                            offset: Offset(-1, -1),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          padding: EdgeInsets.only(bottom: 20),
                          child: Icon(Icons.check_circle, size: 75),
                        ),
                        Center(
                          child: Text("Okay"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          style: TextButton.styleFrom(minimumSize: Size(200, 40)),
          child: Text(
            widget.text1.toString(),
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
