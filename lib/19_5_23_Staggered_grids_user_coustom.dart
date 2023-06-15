import 'package:flutter/material.dart';

import '19_5_23_Staggered_grids_Coustom_widget.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: mytt(),));
}
class mytt extends StatefulWidget {
  const mytt({Key? key}) : super(key: key);

  @override
  State<mytt> createState() => _myttState();
}

class _myttState extends State<mytt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Cstmwdg(
            icc: Icon(Icons.add_a_photo),
        label: Image.asset("assets/images/tomandjerry2.jpg"),
       bcolor: Colors.green,
        iccb: IconButton(onPressed: (){}, icon:Icon(Icons.ac_unit_outlined)),
        wimg: Image.asset("assets/images/Shahid-Kapoor-Pencil-Portrait-Hyper-Realistic-Portrait-Siddhant-Stoned-Santa.jpg")),
    );
  }
}
