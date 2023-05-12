import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  var names     =["anu","ammu","abhi","fasal"];
  var numbers   = ["1234567890","1234567890","1234567890","1234567890"];
  var images    = [Icon(Icons.cabin),Icon(Icons.account_circle),Icon(Icons.adb),Icon(Icons.ac_unit_outlined),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("list view builder")),
    body: ListView.builder(itemBuilder: (context, index)
    {

    }));
  }
}
