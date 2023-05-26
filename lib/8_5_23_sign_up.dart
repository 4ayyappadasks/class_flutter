import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '8_5_33_statefull_loginpage.dart';
import '8_5_33_welcome_page.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var showp = true;
  var formkey = GlobalKey<FormState>();
  var cpypass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(left: 70),
        child: Text("sign up"),
      )),
      body: Form(
          key: formkey,
          child: Center(
              child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    validator: (userid) {
                      if (userid!.isEmpty || !userid.contains("@")) {
                        return "username shonot be empty and should contain @";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "username or email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: TextFormField(
                      validator: (cpass) {
                        cpypass = cpass;
                        if (cpass!.isEmpty || cpass.length < 6) {
                          return "password should not be empty and greater than 6 character";
                        } else {
                          return null;
                        }
                      },
                      obscureText: showp,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.add_box_sharp),
                          hintText: "password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showp) {
                                    showp = false;
                                  } else {
                                    showp = true;
                                  }
                                });
                              },
                              icon: Icon(showp == true
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextFormField(
                      validator: (conf_pass) {
                        if (conf_pass!.isEmpty ||
                            conf_pass.length < 6 ||
                            cpypass != conf_pass) {
                          return "invalid";
                        } else {
                          return null;
                        }
                      },
                      obscureText: showp,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showp) {
                                    showp = false;
                                  } else {
                                    showp = true;
                                  }
                                });
                              },
                              icon: Icon(showp == true
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          prefixIcon: Icon(Icons.add_box_sharp),
                          hintText: "password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final valid = formkey.currentState!.validate();
                        if (valid) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => welcome()));
                        } else {
                          Fluttertoast.showToast(
                              msg: "loginfailed",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.cyan,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }
                      },
                      child: Text("signup")),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("login"))
                ],
              ),
            ),
          ))),
    );
  }
}
