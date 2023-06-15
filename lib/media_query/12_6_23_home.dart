import 'package:flutter/material.dart';

import '12_6_23_bigsc.dart';
import '12_6_23_mob.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: hmpage(),));
}
class hmpage extends StatelessWidget {
  const hmpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600)
      {
        return mobscreen();
      }
    else
    {
      return bigscreen();
    }
  }
}
