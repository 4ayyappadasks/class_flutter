import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body:SafeArea(child: Container(
        color: Colors.purple,
        height: double.infinity,
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",width: 80,height: 80,),
          Text("sample HOME page",style: TextStyle(fontSize: 20,color: Colors.white)),
        ],
      ),))
    );
  }
}
