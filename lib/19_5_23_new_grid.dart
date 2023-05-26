import 'package:class_flutter/19_5_23_My_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(home: Newgrid()));
}

class Newgrid extends StatelessWidget {
  var image = [
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
  ];

  var ccount = [
    1,2,3,4,
    1,2,3,4,
    1,2,3,4,
    1,2,3,4,
    1,2,3,4,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
              20,
              (index) => StaggeredGridTile.count(
                    crossAxisCellCount: ccount[index],
                    mainAxisCellCount: 2,
                    child: widget(image: Image.asset(image[index]), bcolor: Colors.green,),

                  )),
        ),
      ),
    );
  }
}
