import 'package:flutter/material.dart';

class Cstmwdg extends StatelessWidget {
  final Color? bcolor;
  final NetworkImage? nimg;
  final Icon? icc;
  final IconButton? iccb;
  final Image? wimg;
  VoidCallback? onpress;
  Widget? label;


  Cstmwdg({
   this.bcolor,
   this.nimg,
   this.onpress,
   this.label,
    required this.icc,
    this.iccb,
    this.wimg,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bcolor,
      child: ListTile(
        title:label,
        leading: icc,
        trailing: iccb,
        subtitle: wimg,
      ),
    );
  }
}
