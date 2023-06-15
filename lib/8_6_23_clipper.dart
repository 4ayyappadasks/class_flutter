import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: clipper_s(),
  ));
}

class clipper_s extends StatefulWidget {
  const clipper_s({Key? key}) : super(key: key);

  @override
  State<clipper_s> createState() => _clipper_sState();
}

class _clipper_sState extends State<clipper_s> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(30),
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: 1,
                  widthFactor: 1,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1686759902591-260535e161ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(100),
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: 1,
                  widthFactor: 1,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1685475860105-80a4ea08804a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                ),
              ),
            ),
            ClipOval(
              clipBehavior: Clip.antiAlias,
              child: Container(
                  child: Image.network(
                      "https://images.unsplash.com/photo-1584492100332-b0eaad7652fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80")),
            ),
            ClipOval(
              child: Container(
                  child: Image.network(
                      "https://images.unsplash.com/photo-1575672107183-d68930ca74b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80")),
            ),
            ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                  child: Image.network(
                      "https://images.unsplash.com/photo-1513140491664-d3c3efbb4783?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80")),
            )
          ],
        ),
      )),
    );
  }
}
