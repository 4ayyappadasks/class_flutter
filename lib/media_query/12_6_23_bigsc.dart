import 'package:flutter/material.dart';

class bigscreen extends StatelessWidget {
  const bigscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("big screen"),
            bottom: PreferredSize(
                child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(hintText: "search hear"),
                    )),
                preferredSize: Size.fromHeight(50))),
        body:
            // Container(
            //     child: Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/images/tomandjerry4.png"))),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/images/tomandjerry4.png"))),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/images/tomandjerry4.png"))),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/images/tomandjerry4.png"))),
            //       ),
            //     ),
            //   ],
            // )),
            Padding(
          padding: EdgeInsets.all(8),
          child: Row(children: [
            Expanded(
              child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(height: 400,width:700,color: Colors.blue[200],),
                 ) ,
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200
                        ,color: Colors.blue[500],),
                    );
                  },),
                )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 500
                      ,color: Colors.blue[800],),
                  );
                },),
            )
          ]),
        ));
  }
}
