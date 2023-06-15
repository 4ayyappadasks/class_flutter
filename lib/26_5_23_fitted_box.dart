import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fitteds(),
    debugShowCheckedModeBanner: false,
  ));
}

class fitteds extends StatefulWidget {
  const fitteds({Key? key}) : super(key: key);

  @override
  State<fitteds> createState() => _fittedsState();
}

class _fittedsState extends State<fitteds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center
            ,children: [
          FittedBox(fit: BoxFit.cover,alignment: Alignment.center,
            child: Container(
              child: Text("hellooooo"),
            ),
          ),
          Container(
            child: Image.asset(
                "assets/images/Shahid-Kapoor-Pencil-Portrait-Hyper-Realistic-Portrait-Siddhant-Stoned-Santa.jpg",height: 800),
          )
        ]),
      ),
    );
  }
}
