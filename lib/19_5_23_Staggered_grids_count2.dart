import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '10_5_23_statefull_login.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:stged_grid() ,));
}
class stged_grid extends StatefulWidget {
  const stged_grid({Key? key}) : super(key: key);

  @override
  State<stged_grid> createState() => _stged_gridState();
}

class _stged_gridState extends State<stged_grid> {
  var mem_1 = [
    "abc",
    "bcd",
    "cdf",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child:ListView.builder(
                    itemBuilder: (context, index) {
                      return GestureDetector(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loginss(),));
                      },child: ListTile(title: Image.asset("assets/images/aperture-sharp-icon.png"),));
                    },)),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child:InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => Loginss(),));
                },
                  child: ListView.builder(itemCount: 3,itemBuilder: (context, index) {
                    return ListTile(tileColor: Colors.black,title: Image.asset("assets/images/Google_Contacts_icon.svg.png"),);
                  },),
                )),
            StaggeredGridTile.fit(
                crossAxisCellCount: 5,
                child: Container(
                  color: Colors.orange,
                child: Text("chumma"),)),
            StaggeredGridTile.extent(
                crossAxisCellCount: 1,
                mainAxisExtent:100,
                child: Container(
                  color: Colors.purple,
                child: Text("eeeee"),)),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(color: Colors.green,
                child: Text("fdfv"),)),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child:Container(
                  color: Colors.blue,
                  child: Center(child: Text("alo")),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child:Container(
                  color: Colors.red,
                  child: Center(child: Text("hello")),)),
            StaggeredGridTile.fit(
                crossAxisCellCount: 5,
                child: Container(
                  color: Colors.orange,
                  child: Text("chumma"),)),
            StaggeredGridTile.extent(
                crossAxisCellCount: 1,
                mainAxisExtent:100,
                child: Container(
                  color: Colors.purple,
                  child: Text("eeeee"),)),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(color: Colors.green,
                  child: Text("fdfv"),)),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/tomandjerry1.jpg"))));
                    },))
          ],
        ),
      ),
    );
  }
}
