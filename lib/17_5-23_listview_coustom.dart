import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: ListCoustom()));
}
class ListCoustom extends StatelessWidget {
  var colors = [
    Colors.orange,
    Colors.orange,
    Colors.red,
    Colors.black,
    Colors.green,
    Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate:
      //  SliverChildListDelegate(
      //     [
      //   SizedBox(height: 200,width: 100,child: Card(color: Colors.blueAccent,child: Text("hi"))),
      //   Card(color: Colors.redAccent,child: Text("hi")),
      //   Card(color: Colors.greenAccent,child: Text("hi")),
      //   Card(color: Colors.orange,child: Text("hi"))
      // ]


        // List.generate(6, (index) => Card(color: colors[index],
        // child: Center(child: Text("hello")),))
        //)

        SliverChildBuilderDelegate((context, index) => Card(
          color: colors[index],
          child: Row(
            children: [
              Text("welcome"),
              Icon(Icons.ac_unit_outlined)
            ],
          ),
        ),
        childCount: 6,
        )
      ),
    );
  }
}
