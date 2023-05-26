import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottomsheets(),
  ));
}

class bottomsheets extends StatefulWidget {
  const bottomsheets({Key? key}) : super(key: key);

  @override
  State<bottomsheets> createState() => _bottomsheetsState();
}

class _bottomsheetsState extends State<bottomsheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottomsheet")),
      body: Center(
        child: // inkwell
        GestureDetector(onLongPress: () => showSheet(context),
            child: Icon(
                Icons.accessibility_sharp, size: 50, color: Colors.blueAccent)),
      ),
    );
  }

  void showSheet(BuildContext context)
  {
    showModalBottomSheet(context: context, builder: (context)
    =>
        Container(child: ListView(
            children: [
              ListTile(leading: FaIcon(FontAwesomeIcons.squareWhatsapp,color: Colors.greenAccent),title: Text("whatsapp"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.orangeAccent),title: Text("instagram"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.telegram,color: Colors.blue),title: Text("telegram"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.squareWhatsapp,color: Colors.greenAccent),title: Text("whatsapp"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.orangeAccent),title: Text("instagram"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.telegram,color: Colors.blue),title: Text("telegram"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.squareWhatsapp,color: Colors.greenAccent),title: Text("whatsapp"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.orangeAccent),title: Text("instagram"),
              ),
              ListTile(leading: FaIcon(FontAwesomeIcons.telegram,color: Colors.blue),title: Text("telegram"),
              ),

            ],
        )
        ));
  }
}
