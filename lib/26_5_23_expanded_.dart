import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: expandd(),
  ));
}

class expandd extends StatefulWidget {
  const expandd({Key? key}) : super(key: key);

  @override
  State<expandd> createState() => _expanddState();
}

class _expanddState extends State<expandd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: Center(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("hello",style: TextStyle(fontSize: 100)),
            Icon(Icons.content_cut_sharp,size: 80),
            Expanded(
              child: Image(
                  image: AssetImage(
                    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",),fit: BoxFit.cover,),
            )
          ]),
        ),
      ),
    );
  }
}
