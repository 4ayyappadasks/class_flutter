import 'package:flutter/material.dart';

class Logpage extends StatefulWidget {
  const Logpage({Key? key}) : super(key: key);

  @override
  State<Logpage> createState() => _LogpageState();
}

class _LogpageState extends State<Logpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Image.asset(
            "assets/images/blue-evil-devil-fantasy-art-artwork-2500x3875-art-fantasy-art-hd-art-wallpaper-preview.jpg",
            fit: BoxFit.contain,
          )),
    );
  }
}
