import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main()
{
  runApp(MaterialApp(home: rrve(),debugShowCheckedModeBanner: false,));
}
class rrve extends StatefulWidget {
  const rrve({Key? key}) : super(key: key);

  @override
  State<rrve> createState() => _rrveState();
}

class _rrveState extends State<rrve> {
  var ani = [
    "assets/animation/5128-10320-its-me.riv",
    "assets/animation/5132-10323-logo-interaction.riv"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
        return Container(
          height: 300,
          width: 400,
          child: RiveAnimation.asset(ani[index],fit: BoxFit.cover,),);
      },)),
    );
  }
}
