
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: flutterdoc(),));
}

class flutterdoc extends StatefulWidget {
  const flutterdoc({Key? key}) : super(key: key);

  @override
  State<flutterdoc> createState() => _flutterdocState();
}

class _flutterdocState extends State<flutterdoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(backgroundColor: Colors.green,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
            //TabItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle,)))
          ],
          onTap: (int i) => print('click index=$i'),
        )

    );
  }
}
