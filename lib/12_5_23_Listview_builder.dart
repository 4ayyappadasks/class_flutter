import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  var names     =["anu","ammu","abhi","fasal","anu","ammu","abhi","fasal","anu","ammu","abhi","fasal"];
  var numbers   = ["1234567890","1234567890","1234567890","1234567890",
    "1234567890","1234567890","1234567890","1234567890","1234567890",
    "1234567890","1234567890","1234567890"];
  var images    = [Icon(Icons.cabin),Icon(Icons.account_circle),Icon(Icons.adb),Icon(Icons.ac_unit_outlined),
                    Icon(Icons.cabin),Icon(Icons.account_circle),Icon(Icons.adb),Icon(Icons.ac_unit_outlined),
                    Icon(Icons.cabin),Icon(Icons.account_circle),Icon(Icons.adb),Icon(Icons.ac_unit_outlined)];
  var images1    =["assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
                  "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
                  "assets/images/aperture-sharp-icon.png",
                  "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png",
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png",
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png"];

   var colo = [Colors.green,Colors.lightGreen,Colors.teal,Colors.cyanAccent,
     Colors.green,Colors.lightGreen,Colors.teal,Colors.cyanAccent,
     Colors.green,Colors.lightGreen,Colors.teal,Colors.cyanAccent];

   var color = [900,800,700,600,500,400,300,200,100,50,900,800,700,600,500,400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(20),
            bottomStart: Radius.circular(20))),
        title: Text("list view builder"),),
    floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.ac_unit_outlined),),

    body: Column(
      children: [
        SizedBox(
          height: 300,
          child: ListView.builder(shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index)
          {
            return Card(
                // color: colo[index],
              color:Colors.blue[color[index]],
            child: ListTile(title: Text(names[index]),
            subtitle: Text("${numbers[index]}"),
            leading: (images[index]),
            trailing: Image.asset(images1[index]),
            ));
          },
          itemCount: names.length,),
        ),
        ElevatedButton(onPressed: (){}, child: Icon(Icons.ac_unit_outlined)),
        Image.asset("assets/images/aperture-sharp-icon.png",width: 90,height: 90,),
      ],
    ));
  }
}
