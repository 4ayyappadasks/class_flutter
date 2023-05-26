import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: backbutton(),
  ));
}

class backbutton extends StatefulWidget {
  const backbutton({Key? key}) : super(key: key);

  @override
  State<backbutton> createState() => _backbuttonState();
}

class _backbuttonState extends State<backbutton> {
  Future<bool> ShowAlert() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("exit aakano !!!"),
          content: Text("sherikkum  exit aakano"),
          actions: [
            ElevatedButton(onPressed: (){Navigator.of(context).pop(true);}, child: Text("yes")),
            ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text("no")),
            ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text("cancel"))
          ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ShowAlert,
      child: Scaffold(
        body: Center(
          child: Container(width: double.infinity,height: double.infinity,
              child:
              //Lottie.network("https://assets7.lottiefiles.com/packages/lf20_JCHyrP.json"),

              Lottie.asset("assets/animation/89268-cloudy-weather.json",fit: BoxFit.fill)
          ),
        ),),
    );
  }
}
