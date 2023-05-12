import 'dart:async';
import 'package:class_flutter/10_5_23_statefull_login.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false ,home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Loginss()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.purpleAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image-removebg-preview.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(style:TextStyle(fontSize: 50,color: Colors.white),"Tivi"),
                //Text(style: TextStyle(color: Colors.white,fontSize: 50,),"dey"),
                Text(style:TextStyle(fontSize: 50,color: Colors.white),"dey"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Loginss(),
                    ));
                  },
                  child: Text("login page")),
            )
          ],
        ),
      ),
    );
  }
}
