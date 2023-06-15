import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '5_6_23_intro_hmpage.dart';
import '5_6_23_intro_lgpage.dart';

void main()
{
  runApp(MaterialApp(home: intros(),debugShowCheckedModeBanner: false,));
}
class intros extends StatefulWidget {
  const intros({Key? key}) : super(key: key);

  @override
  State<intros> createState() => _introsState();
}

class _introsState extends State<intros> {
  @override
  Widget build(BuildContext context) {

    PageDecoration dddecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 20),
      boxDecoration: BoxDecoration(gradient: LinearGradient(colors: [
        Colors.blue,
      Colors.purple
      ],begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      //stops: [0.1,0.5,0.6]
      ))
    );


    PageDecoration ccdecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.yellow,
      ),
      bodyTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.purple),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(gradient: LinearGradient(colors:[
        Colors.blue,
        Colors.red,
        Colors.white
      ],begin: Alignment.topCenter,
      end: Alignment.bottomRight))
    );


    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: ccdecoration,
            title: "First page",
            body:"dfgbrhjnthjnnutkhjntjnbvchbsvn,bg jgv fgvjkdncbjusdgf   yhugvnscvv dbc",
        image: introImage("assets/images/tomandjerry1.jpg")),

        PageViewModel(
            decoration: dddecoration,
            title: "second page",
            body: "snmvfdfysfdnsbvfbfdjhgfkdsfdjfdgfbhdgfujdhuysgvjksvb",
            footer:introImage("assets/images/tomandjerry2.jpg")),

        PageViewModel(
            decoration: ccdecoration,
            title: "third page",
        body: "nvshgsygfhj  uhefbn whwjfwuifg gighfjkngfb",
        image: introImage("assets/images/tomandjerry3.jpg")),
      ],
      onDone: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage(),));
      },
      onSkip: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Logpage(),));
      },
    showSkipButton: true,
    skip: Text("skkipp"),
      next: Icon(Icons.add),
      done: Text("all set"),
      dotsDecorator: DotsDecorator(size: Size(12,10),
      color: Colors.brown,
      activeSize: Size(22, 10),
      activeColor: Colors.red,
      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
    );
  }

  Widget introImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(image,width: 300,height: 300,),
    );
  }
}
