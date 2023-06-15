import 'package:flutter/material.dart';

class mobscreen extends StatelessWidget {
  const mobscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("mob screen"),
          bottom: PreferredSize(
              child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(hintText: "search hear"),
                  )),
              preferredSize: Size.fromHeight(50))),
      body: Column(
        children: [
          Container(height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/tomandjerry6.jpg"))
          ),),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height:200,color: Colors.blue),
            );
          },)),
        ],
      ),

    );
  }
}
