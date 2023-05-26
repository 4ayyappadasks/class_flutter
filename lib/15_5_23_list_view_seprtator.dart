import 'package:flutter/material.dart';

class Seperator extends StatelessWidget {

  var names     =["anu","ammu","abhi","fasal","anu","ammu","abhi","fasal","anu","ammu","abhi","fasal"];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.separated(itemBuilder: (context, index)
    {
      return Card(child: ListTile(
        title: Text("${names[index]}"),
        leading: CircleAvatar(backgroundImage: AssetImage("${images1[index]}")),
      ));
    },
        separatorBuilder: (context, index)
        {
          return Divider(thickness: 3,color: Colors.green[900],);
        },
        itemCount: names.length),);
  }
}
