import 'package:class_flutter/14_6_23_share_sc_using_constructors/second_p.dart';
import 'package:class_flutter/14_6_23_share_sc_using_constructors/stful_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dummy(),
  ));
}

class dummy extends StatelessWidget {
String  name= "appu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAIN PAGE"),
      ),
      body: Center(
        child: Column(
            children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => mains(v1 : name,v2:"kakkanadu",v3:8606580635),
                ));
              },
              child: Icon(Icons.drive_file_move_rounded)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => mains1(v1 : name,v2:"muv",v3:9446422041),
                ));
              },
              child: Icon(Icons.drive_eta)),
        ]),
      ),
    );
  }
}
