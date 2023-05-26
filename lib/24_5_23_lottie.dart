import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lotties(),
  ));
}

class lotties extends StatefulWidget {
  const lotties({Key? key}) : super(key: key);

  @override
  State<lotties> createState() => _lottiesState();
}

class _lottiesState extends State<lotties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(width: double.infinity,height: double.infinity,
            child:
            //Lottie.network("https://assets7.lottiefiles.com/packages/lf20_JCHyrP.json"),

            Lottie.asset("assets/animation/89268-cloudy-weather.json",fit: BoxFit.fill)
        ),
      ),
    );
  }
}
