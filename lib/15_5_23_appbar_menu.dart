import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Appbar_menu(),));
}

class Appbar_menu extends StatelessWidget {

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

  var time=["today,12:45pm","today,10:00am","today,09:00am",
    "yesterday","yesterday","yesterday","yesterday","yesterday",
    "yesterday","yesterday","yesterday","yesterday","yesterday","yesterday",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(backgroundColor: Colors.blue[900],title: Text("my contacts"),
                    actions: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.ice_skating)),
                      Icon(Icons.search),
                      Icon(Icons.contact_mail),
                    PopupMenuButton(itemBuilder: (context) 
                    {
                      return [
                        PopupMenuItem(child: Text("setting")),
                      PopupMenuItem(child: Icon(Icons.co_present_rounded,color: Colors.black54),),
                      PopupMenuItem(child: Image.asset("assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",height: 20,width: 20,))];
                    },)],) ,
      
      body: ListView.separated(itemBuilder: (context, index)
    {
      return Card(child: ListTile(
        title: Text("${names[index]}"),
        leading: CircleAvatar(backgroundImage: AssetImage("${images1[index]}")),
        subtitle: Text("${time[index]}"),
      ));
    },
        separatorBuilder: (context, index)
        {
          return Divider(thickness: 3,color: Colors.blue[700],);
        },
        itemCount: names.length),
    floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.ac_unit_outlined),),);
  }
}
