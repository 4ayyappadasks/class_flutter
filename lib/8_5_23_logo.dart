import 'dart:async';

import 'package:flutter/material.dart';

import '8_5_23_interface.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Interface()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.indigo[900]),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
             fit: BoxFit.contain),
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Interface()));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
    ));
  }
}
