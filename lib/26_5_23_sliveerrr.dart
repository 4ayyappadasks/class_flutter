import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: sliverrr(),
    debugShowCheckedModeBanner: false,
  ));
}

class sliverrr extends StatefulWidget {
  const sliverrr({Key? key}) : super(key: key);

  @override
  State<sliverrr> createState() => _sliverrrState();
}

class _sliverrrState extends State<sliverrr> {
  var img =
  [
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
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
    "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png"
    "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png",
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/Iconarchive-Childrens-Book-Animals-Chameleon.512.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: false,
          pinned: true,
          title: Text("SLIVER APP BAR"),
          bottom: AppBar(
              elevation: 0,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt))),
              )),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        height: 90,
                        child: Stack(
                          children: [
                        Positioned(child: Image.asset(img[index])),
                        Positioned(left: 100,child: Text("sliver list ${index}"))],
                        ),
                      ),
                    ),
                childCount: 20))
      ]),
    );
  }
}
