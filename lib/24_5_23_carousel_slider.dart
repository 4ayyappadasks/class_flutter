import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: carousel_slider12(),
  ));
}

class carousel_slider12 extends StatefulWidget {
  const carousel_slider12({Key? key}) : super(key: key);

  @override
  State<carousel_slider12> createState() => _carousel_slider12State();
}

class _carousel_slider12State extends State<carousel_slider12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("carousel_slider"),
        backgroundColor: Colors.green,
      ),
      body: CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/tomandjerry1.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/tomandjerry2.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/tomandjerry5.jpg"))),
            ),
          ],
          options: CarouselOptions(
              autoPlay: true,
              viewportFraction: .5,
              height: 600,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(seconds: 1),
          )),
    );
  }
}
