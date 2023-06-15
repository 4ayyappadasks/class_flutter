import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '19_5_23_Staggered_grids_Coustom_widget.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: my_try1(),));
}
class my_try1 extends StatefulWidget {
  const my_try1({Key? key}) : super(key: key);

  @override
  State<my_try1> createState() => _my_try1State();
}

class _my_try1State extends State<my_try1> {
  var t = [
    "sdsd",
    "yhythtyh",
    "rhyft5thyhyh",
    "TVrhgtgt",
    "vyrhthyyhv",
    "V%yrhh",
    "rhyft5thyhyh",
    "TVrhgtgt",
    "vyrhthyyhv",
    "V%yrhh"
  ];
  var i =[
    Icons.ac_unit_outlined,
    Icons.account_circle_sharp,
    Icons.add_alert,
    Icons.account_circle_outlined,
    Icons.access_time_filled_rounded,
    Icons.accessible_forward_sharp,
    Icons.account_balance_outlined,
    Icons.account_tree_rounded,
    Icons.add_a_photo,
    Icons.add_chart_sharp
  ];

  var c = [
    Colors.redAccent,
    Colors.purple,
    Colors.greenAccent,
    Colors.grey,
    Colors.blue,
    Colors.amber,
    Colors.deepPurple,
    Colors.white10,
    Colors.cyanAccent,
    Colors.lightGreen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: StaggeredGrid.count(
          crossAxisCount: 1,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: List.generate(10, (index) => Cstmwdg(
        icc:Icon(i[index]),
        label: Text(t[index]),
        bcolor: c[index],
        iccb: IconButton(onPressed: (){}, icon: Icon(i[index])),
        wimg: Image.asset("assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png"),
      ))),)),
    );
  }
}
