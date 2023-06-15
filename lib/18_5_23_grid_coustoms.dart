import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: grids_custm(),
  ));
}

class grids_custm extends StatefulWidget {
  const grids_custm({Key? key}) : super(key: key);

  @override
  State<grids_custm> createState() => _grids_custmState();
}

class _grids_custmState extends State<grids_custm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        ///SliverGridDelegateWithMaxCrossAxisExtent
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50),
          childrenDelegate:
              ///SliverChildBuilderDelegate
          SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Card(
                    color: Colors.blue,
                    child: ListTile(
                        title: Image.asset(
                            "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png")),
                  )
          )

          ///SliverChildListDelegate
          // SliverChildListDelegate(List.generate(
          //     100,
          //     (index) => Card(
          //           child: ListTile(
          //               title:
          //                   Image.asset("assets/images/aperture-sharp-icon.png")),
          //         ))),

          ///SliverGridDelegateWithFixedCrossAxisCount
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),

          ///SliverChildListDelegate
          // childrenDelegate: SliverChildListDelegate(List.generate(
          //     10,
          //     (index) => Card(
          //           child: ListTile(title: Center(child: Text("fvdfvdvcdv"))),
          //         ))),

          ///SliverChildBuilderDelegate
          // childrenDelegate: SliverChildBuilderDelegate(
          //     childCount: 10,
          //     (context, index) => Card(
          //           child: ListTile(
          //               title: Image.asset(
          //                   "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png")),
          //         ))
          ),
    );
  }
}
