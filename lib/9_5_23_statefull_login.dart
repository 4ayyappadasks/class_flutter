import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logins extends StatefulWidget {
  @override
  State<Logins> createState() => _LoginState();
}

class _LoginState extends State<Logins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN STATEFUL"),
      ),
      body: SingleChildScrollView(
        child: Form(
            child: Column(
          children: [
            Text("log in",
                style: GoogleFonts.artifika(
                    fontSize: 100, color: Colors.blueAccent)),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "user name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility_off))),
            ),
            ElevatedButton(onPressed: () {}, child: Text("log in hear")),
            TextButton(onPressed: () {}, child: Text("signup hear"))
          ],
        ) //88
            ),
      ),
    );
  }
}
