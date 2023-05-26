import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '10_3_23_homepage.dart';
import '11_5_23_contacts_list.dart';
import '16_5_23_whatapp_tab_call.dart';
import '17_5-23_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: bottom_bar(),
    debugShowCheckedModeBanner: false,
  ));
}

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int index = 0;

  var screens = [grid(), HOME(), Contact_interface(), whatsapp_call()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("bottom navigation"),
        // ),


        bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.teal,
            selectedItemColor: Colors.red,
            onTap: (tapindex) {
              setState(() {
                index=tapindex;
              });
            },
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit_outlined, color: Colors.black),
                  label: "grid"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_tree_rounded, color: Colors.black),
                  label: "logo"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add, color: Colors.black), label: "contacts"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_rounded, color: Colors.black),
                  label: "video call"),
            ]),
    body: Center(child: screens[index],),
    );
  }
}
