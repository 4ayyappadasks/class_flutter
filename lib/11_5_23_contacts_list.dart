import 'package:flutter/material.dart';

class Contact_interface extends StatefulWidget {
  const Contact_interface({Key? key}) : super(key: key);

  @override
  State<Contact_interface> createState() => _Contact_interfaceState();
}

class _Contact_interfaceState extends State<Contact_interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(
            child: ListTile(
                title: Text("ammu"),
                subtitle: Text("123456789"),
                leading: Icon(Icons.cabin),
                trailing: Wrap(
                  children: [Icon(Icons.message), Icon(Icons.call)],
                ))),
        Card(
            child: ListTile(
          title: Text("anu"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("appu"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("alu"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("ammus"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("lachus"),
          subtitle: Text("123456789"),
          leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/aperture-sharp-icon.png")),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
                title: Text("ammu"),
                subtitle: Text("123456789"),
                leading: Icon(Icons.cabin),
                trailing: Wrap(
                  children: [Icon(Icons.message), Icon(Icons.call)],
                ))),
        Card(
            child: ListTile(
          title: Text("anu"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("appu"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("alu"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("ammus"),
          subtitle: Text("123456789"),
          leading: Icon(Icons.cabin),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
        Card(
            child: ListTile(
          title: Text("lachus"),
          subtitle: Text("123456789"),
          leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/aperture-sharp-icon.png")),
          trailing: Wrap(
            children: [Icon(Icons.message), Icon(Icons.call)],
          ),
        )),
      ]),
    );
  }
}
