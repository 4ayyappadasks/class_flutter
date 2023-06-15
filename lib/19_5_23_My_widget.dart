import 'package:flutter/material.dart';

class widget extends StatelessWidget {
final Color? bcolor;
final Image? image;
VoidCallback? onpress;
Widget? label;

widget({
  this.bcolor,
  required this.image,
  this.onpress,
  this.label
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title:label,
          leading: image,
           onTap: onpress
      ),
    color: bcolor,);
  }
}
