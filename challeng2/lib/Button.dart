import 'package:flutter/material.dart';

class button extends StatefulWidget {
  const button({
    super.key,
    required this.text1,
  });
  final String text1;
  //final Function() onPressed;

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.blue),
      child: TextButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: ((context) => Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text("Settings"),
                              SizedBox(
                                height: 25,
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Settings1"),
                            SizedBox(
                              width: 10,
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Settings2"),
                            SizedBox(
                              width: 10,
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Settings3"),
                            SizedBox(
                              width: 10,
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Settings4"),
                            SizedBox(
                              width: 10,
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        )
                      ],
                    ),
                  )),
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
