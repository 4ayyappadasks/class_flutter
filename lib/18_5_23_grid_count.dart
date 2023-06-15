import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid__count(),
    debugShowCheckedModeBanner: false,
  ));
}

class grid__count extends StatefulWidget {
  const grid__count({Key? key}) : super(key: key);

  @override
  State<grid__count> createState() => _grid__countState();
}

class _grid__countState extends State<grid__count> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height/2;
    double width = MediaQuery.of(context).size.width/2;
    return Scaffold(
      body: Center(
          child: GridView.count(childAspectRatio: height/width,
        crossAxisCount: 2,

        /// childreen without using []
        children: List.generate(
            50,
            (index) => Card(
                  child: ListTile(title: Center(child: Text("sdvdfvfv"))),
                ))

        /// childreen using []
        // [
        //   Card(child: ListTile(title: Center(child: Text("knbjnb"))),),
        //   Card(child: ListTile(title: Center(child: Text("knbjnb"))),),
        //   Card(child: ListTile(title: Center(child: Text("knbjnb"))),),
        // ]
        ,
      )),
    );
  }
}
