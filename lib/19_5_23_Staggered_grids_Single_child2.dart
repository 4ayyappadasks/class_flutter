import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main()
{
  runApp(MaterialApp(home:Staggered_grids2m() ,debugShowCheckedModeBanner: false,));
}
 class Staggered_grids2m extends StatefulWidget {
  const Staggered_grids2m({Key? key}) : super(key: key);

  @override
  State<Staggered_grids2m> createState() => _Staggered_grids2mState();
}

class _Staggered_grids2mState extends State<Staggered_grids2m> {
  var Stged_grid = [
    Icons.add,
    Icons.account_circle_sharp,
    Icons.add_circle
  ];
  var col = [
    Colors.red,
    Colors.purple,
    Colors.redAccent
  ];
  var c_count = [
    1,
    1,
    3
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: StaggeredGrid.count(
          crossAxisCount: 2,
      crossAxisSpacing: 10,
          mainAxisSpacing: 10,
      children:
      List.generate(3, (index) => StaggeredGridTile.count(
        mainAxisCellCount: c_count[index],
        crossAxisCellCount: c_count[index],
        child: Container(height: 100,width: 200,color: col[index],child: Icon(Stged_grid[index])) ,
      )),)),
    );
  }
}
