import 'package:flutter/material.dart';

class mains extends StatelessWidget {
  String? v1, v2;
  int? v3;

  mains({super.key, this.v1, this.v2, this.v3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "i am  $v1 , located in $v2 my contact no is $v3",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
