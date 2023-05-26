// import 'package:flutter/material.dart';
//
// class whatsapp_chat extends StatefulWidget {
//   const whatsapp_chat({Key? key}) : super(key: key);
//
//   @override
//   State<whatsapp_chat> createState() => _whatsapp_chatState();
// }
//
// class _whatsapp_chatState extends State<whatsapp_chat> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(length: 3,
//       child: Scaffold(appBar: AppBar(title: Text("whatsapp"),
//         bottom: TabBar(
//             tabs:[
//                   Tab(text: "chat"),
//                   Tab(text: "status"),
//                   Tab(text: "call")
//                  ]
//     )
//       ),
//           body: TabBarView(
//             children: []
//           )
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

import '11_5_23_contacts_list.dart';
import '16_5_23_whatapp_tab_call.dart';
import '16_5_23_whatapp_tab_status.dart';

class whatsapp_chat extends StatefulWidget {
  @override
  State<whatsapp_chat> createState() => _whatsapp_chatState();
}

class _whatsapp_chatState extends State<whatsapp_chat> {
  var name = [
    "appu",
    "anu",
    "ammu",
    "achu",
    "abhi",
    "aravi",
    "fasal",
    "appu",
    "anu",
    "ammu",
    "achu",
    "abhi",
    "aravi",
    "fasal",
    "appu",
    "anu",
    "ammu",
    "achu",
    "abhi",
    "aravi",
    "fasal"
  ];
  var images = [

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
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contact_interface(),));},child:
      Icon(Icons.contacts_outlined)),
        // appBar: AppBar(
        //     backgroundColor: Colors.green[700],
        //     title: Text("chat")),
        // floatingActionButton: Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     FloatingActionButton(
        //         onPressed: () {
        //           Navigator.of(context).push(MaterialPageRoute(
        //             builder: (context) => whatsapp_status(),
        //           ));
        //         },
        //         child: Text("call")),
        //     FloatingActionButton(
        //       onPressed: () {
        //         Navigator.of(context).push(MaterialPageRoute(
        //           builder: (context) => whatsapp_status(),
        //         ));
        //       },
        //       child: Text("status"),
        //     )
        //   ],
        // ),
        body: ListView.builder(
          itemBuilder: (Context, index) {
            return ListTile(
              title: Text("${name[index]}"),
              subtitle: Text("hi da"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              trailing: Text("12/10/2023"),
            );
          },
          itemCount: name.length,
        ));
  }
}
