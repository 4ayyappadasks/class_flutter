import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Stackd(),));
}


class Stackd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
            children: [
            Container(color: Colors.green),
            Container(color: Colors.blueAccent,height: 100,width: 200,),
            Container(color: Colors.black87,height: 50,width: 20,),
            Positioned(bottom: 122,child: Container(color: Colors.red,width: 10,height: 10,)),]
          )
      ),
    );
  }
}
