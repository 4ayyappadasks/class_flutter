import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: grid()));
}

class grid extends StatelessWidget {
  grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: List.generate(
              32,
              (index) => Card(
                    child: Center(child: Text("hello")),
                    color: colrr[index],
                  ))),
    );
  }

  var colrr = [
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.indigo,
    Colors.green,
    Colors.red,
    Colors.orange
  ];
}
