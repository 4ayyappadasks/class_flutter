import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '8_5_23_sign_up.dart';
import '8_5_33_welcome_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var show = true;
  var showu = true;
  var formkey = GlobalKey<FormState>();

  ///key

  var name = "appu@";
  var psd = "123456";

  TextEditingController username =TextEditingController();
  TextEditingController passworde = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
        padding: const EdgeInsets.only(left: 70),
        child: Column(
          children: [Icon(Icons.add_alert), Text("login data")],
        ),
      )),
      body: Form(
        key: formkey,

        ///key

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              /// username

              TextFormField(
                controller: username,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return "user name cant be empty or should contain @";
                  } else {
                    return null;
                  }
                },
                obscureText: showu,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.account_circle),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showu) {
                              showu = false;
                            } else {
                              showu = true;
                            }
                          });
                        },
                        icon: Icon(showu == true
                            ? Icons.visibility_off
                            : Icons.visibility)),

                    // const Icon(Icons.account_circle_outlined),
                    hintText: "username or email"),
              ),



              ///password

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  controller: passworde,
                  validator: (pasword) {
                    if (pasword!.isEmpty || pasword.length < 6) {
                      return "password should not be empty and sholud be above 6 chara";
                    } else {
                      return null;
                    }
                  },
                  obscureText: show,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.add_box_sharp),
                      hintText: "password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (show) {
                                show = false;
                              } else {
                                show = true;
                              }
                            });
                          },
                          icon: Icon(show == true
                              ? Icons.visibility_off
                              : Icons.visibility))),
                ),
              ),


              ///elevated button

              ElevatedButton(
                  onPressed: () {
                    String email = username.text.trim();
                    String pas1   = passworde.text.trim();

                    final valid = formkey.currentState!.validate();
                    if (valid)
                    {
                      if(name==email &&   psd==pas1)
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => welcome()));
                      }
                    }
                    else
                    {
                      Fluttertoast.showToast(
                          msg: "loginfailed",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.cyan,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }

                    ///
                  },
                  child: Text("login")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => signup(),
                    ));
                  },
                  child: Text("signup"))
            ],
          ),
        ),
      ),
    );
  }
}
