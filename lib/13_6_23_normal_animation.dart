import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: nor_ani(),
  ));
}

class nor_ani extends StatefulWidget {
  const nor_ani({Key? key}) : super(key: key);

  @override
  State<nor_ani> createState() => _nor_aniState();
}

class _nor_aniState extends State<nor_ani> with SingleTickerProviderStateMixin {
  Animation<double>? animation;

  ///step 1
  AnimationController? controller;

  ///step2
  @override
  void initState() {
    // TODO: implement initState/// step 3
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    ///step 3
    animation = Tween<double>(begin: 12, end: 100).animate(controller!)
      ..addListener(() {
        setState(() {});
      });
  }

  void increaseSize() {
    controller!.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "hello all",
            style: TextStyle(fontSize: animation?.value),
          ),
        ),
        ElevatedButton(onPressed: ()=> increaseSize(), child:Text("increase size") ),
        ElevatedButton(onPressed: ()=>, child: child)
      ]),
    );
  }
}
