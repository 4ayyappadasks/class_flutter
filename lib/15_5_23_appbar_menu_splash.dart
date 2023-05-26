import 'dart:async';
import 'package:flutter/material.dart';

import '15_5_23_appbar_menu.dart';



void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false ,
      home: MyApp(),
    theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),



      // themeMode: ThemeMode.system,


//colorScheme:ColorScheme(brightness: brightness, primary: primary, onPrimary: onPrimary,
// secondary: secondary, onSecondary: onSecondary, error: error, onError: onError,
// background: background, onBackground: onBackground, surface: surface,
// onSurface: onSurface)
  )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Appbar_menu()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.black87),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Google_Contacts_icon.svg.png",height: 100,width: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(style:TextStyle(fontSize: 50,color: Colors.white),"Contact"),
                    IconButton(onPressed: (){Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Appbar_menu(),));},
                        icon: Icon(Icons.account_circle_outlined,color: Colors.white,))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


