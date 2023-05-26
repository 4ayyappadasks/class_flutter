import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome")),
      body: Center(child: Image.asset("assets/images/tomandjerry1.jpg",fit: BoxFit.contain,)),
    );
  }
}
