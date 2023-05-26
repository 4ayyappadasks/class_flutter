import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tileexpantion(),
  ));
}

class tileexpantion extends StatefulWidget {
  const tileexpantion({Key? key}) : super(key: key);

  @override
  State<tileexpantion> createState() => _tileexpantionState();
}

class _tileexpantionState extends State<tileexpantion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tile expantion"),
        ),
        body: ListView(children:
        [
           ExpansionTile(
            title: Text("list"),
            subtitle: Text("expand to view more"),
            children: [
              ListTile(title: Text("blue"),leading: CircleAvatar(backgroundColor: Colors.blue),),
              ListTile(title: Text("green"),leading: CircleAvatar(backgroundColor: Colors.green),),
              ListTile(title: Text("red"),leading: CircleAvatar(backgroundColor: Colors.red),),
              ListTile(title: Text("indigo"),leading: CircleAvatar(backgroundColor: Colors.indigo),)
            ],
          ),
          ExpansionTile(
            title: Text("list"),
            subtitle: Text("expand to view more"),
            children: [
              ListTile(title: Text("blue"),leading: CircleAvatar(backgroundColor: Colors.blue),),
              ListTile(title: Text("green"),leading: CircleAvatar(backgroundColor: Colors.green),),
              ListTile(title: Text("red"),leading: CircleAvatar(backgroundColor: Colors.red),),
              ListTile(title: Text("indigo"),leading: CircleAvatar(backgroundColor: Colors.indigo),)
            ],
          )
        ],
        ));
  }
}
