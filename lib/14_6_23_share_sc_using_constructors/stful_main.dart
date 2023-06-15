import 'package:flutter/material.dart';

class mains1 extends StatefulWidget {
  final String? v1,v2;
  final int? v3;
   mains1({super.key, this.v1,  this.v2, this.v3});

  @override
  State<mains1> createState() => _mains1State();
}

class _mains1State extends State<mains1> {

  @override
  Widget build(BuildContext context) {
    String? v1 = widget.v1;
    return Scaffold(
      body: Center(child: Text("i am $v1 and located at ${widget.v2} and contact no is ${widget.v3} ")),
    );
  }
}
