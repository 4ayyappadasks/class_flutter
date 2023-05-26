import 'package:flutter/material.dart';

import '11_5_23_contacts_list.dart';
import '16_5_23_whatapp_tab_call.dart';
import '16_5_23_whatapp_tab_chat.dart';
import '16_5_23_whatapp_tab_status.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
      home: chat()));
}

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:4,
        child: Scaffold(
            appBar: AppBar(backgroundColor: Colors.green[900],
              title: Text("WHATSAPP"),
              bottom: TabBar(
                isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  // labelPadding: EdgeInsets.zero,
                  tabs: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width*.1,
                        child: Center(child: Tab(icon: Icon(Icons.confirmation_num_sharp),))
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width*.2,
                        child: Center(child: Text("chat"))
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width*.2,
                        child: Center(child: Text("status"))
                    ),
                    SizedBox(
                        width:MediaQuery.of(context).size.width*.2,
                        child: Center(child: Text("call"))),
                  ]),
            ),
          body:TabBarView (
            children: [Contact_interface(),
              whatsapp_chat(),
              whatsapp_status(),
              whatsapp_call()]
        ),
        )
    );
  }
}
