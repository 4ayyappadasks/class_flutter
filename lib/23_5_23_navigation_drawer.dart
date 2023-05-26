import 'package:flutter/material.dart';

import '19_5_23_new_grid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: navigation(),
  ));
}

class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("navigationn")),
      drawer: Theme(data: Theme.of(context).copyWith(canvasColor:Colors.green),
        child: Drawer(
            backgroundColor: Colors.blue[50],
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage("assets/images/tomandjerry5.jpg"),fit: BoxFit.fill)),
                  accountName: Text("ayyappanks"),
                  accountEmail: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Newgrid(),
                        ));
                      },
                      child: Text(
                        "ayyappanks141@gmail.com",
                        style: TextStyle(color: Colors.white),
                      )),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/tomandjerry1.jpg")),
                  otherAccountsPictures: [
                    CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/tomandjerry1.jpg")),
                    CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/tomandjerry1.jpg"))
                  ],
                ),
                ListTile(
                    leading: Icon(Icons.account_circle), title: Text("profile")),
                ListTile(leading: Icon(Icons.logout), title: Text("logout")),
                ListTile(
                    subtitle: Text("text message"),
                    leading: Icon(Icons.queue_play_next),
                    title: Text("sent")),
                Divider(),
                ListTile(leading: Icon(Icons.settings), title: Text("setting")),
              ],
            )),
      ),
    );
  }
}
