import 'package:flutter/material.dart';
import '../10_3_23_homepage.dart';
import '6_6_23_dummy_data.dart';
void main()
{
  runApp(MaterialApp(
    home: producttscreen(),
    debugShowCheckedModeBanner: false,));
}

class producttscreen extends StatefulWidget {
  const producttscreen({Key? key}) : super(key: key);

  @override
  State<producttscreen> createState() => _producttscreenState();
}

class _producttscreenState extends State<producttscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my home")),
      body:

        ListView(
          children: List.generate(Products.length,
                  (index) => ListTile(
                      title: Image.asset("${Products[index]["image"]}",width: 100,height: 100,),
                    subtitle: Text("${Products[index]["description"]}"),
                    tileColor: Colors.grey,
                    trailing: Text("rating = ${Products[index]["rating"]}"),
                    leading: Text("${Products[index]["name"]}"),
                  ) ),)
      // ListView(
      //     padding: EdgeInsets.all(20),
      //     children: Products.map((Product) => ListTile(
      //       leading: Image.asset(Product["image"],height: 50,width: 50),
      //           title: Text(Product["name"]),
      //       subtitle: Text(Product["description"]),
      //       trailing: Text("${Product["rating"]}"),
      //
      //         )).toList()),



    //   GridView(
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         childAspectRatio: 1.5,
    //           crossAxisCount: 1,
    //       crossAxisSpacing: 1,
    //       mainAxisSpacing: 1),
    //       children: Products.map((e) =>
    //       ListTile(
    //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    //         title: Image.asset(e["image"],width: 100,height: 100),
    //         subtitle: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HOME()));},
    // child: Text("description= ${e["description"]}")),
    //         leading: Text("rating = ${e["rating"]}"),
    //         trailing: Text("price = ${e["price"]}"),
    //         tileColor: Colors.blue[400],
    //
    //       )).toList()
    //   )



    );
  }
  void gotonNext(BuildContext context)
  {}
}
