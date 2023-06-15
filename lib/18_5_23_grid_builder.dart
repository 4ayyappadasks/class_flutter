import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: grd_max()));
}

class grd_max extends StatefulWidget {
  const grd_max({Key? key}) : super(key: key);

  @override
  State<grd_max> createState() => _grd_maxState();
}

class _grd_maxState extends State<grd_max> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        ///SliverGridDelegateWithFixedCrossAxisCount
        // child: GridView.builder(itemCount: 100,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 5,crossAxisSpacing: 10,mainAxisSpacing: 10),
        //     itemBuilder: (context, index) {
        //       return Card( child: Text("dvfgdfvgg"),);
        //     },)

        ///SliverGridDelegateWithMaxCrossAxisExtent
        child: GridView.builder(
          itemCount: 90,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Card(
              child: Text("dvfgdfvgg"),
            );
          },
        ),
      ),
    );
  }
}
