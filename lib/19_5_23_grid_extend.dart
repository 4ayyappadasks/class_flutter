import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main ()
{
  runApp(MaterialApp(home: Stag_grid()));
}
class Stag_grid extends StatelessWidget {
  const Stag_grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 1,
                  child: Container(color: Colors.red,
                    child: Center(child: Text("hello",
                        style: TextStyle(color: Colors.black54)),),)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 3,
                  child: Container(color: Colors.blue,
                    child: Center(child: Text("alo",
                        style: TextStyle(color: Colors.black54)),),)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(color: Colors.black,
                    child: Center(child: Text("susu",
                        style: TextStyle(color: Colors.white)),),))
            ]),
      ),
    );
  }
}
