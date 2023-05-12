import 'package:class_flutter/10_3_23_homepage.dart';
import 'package:class_flutter/10_5_23_statefull_login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var showpwd = true;
  var showpwd1 = true;
  var formkey = GlobalKey<FormState>();
  var confirmpass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.green,title:Text(
            "register page")),
        body:Form(
          key: formkey,
          child: SafeArea(
              child: Container(
                color: Colors.lightGreen[50],
                height: double.infinity,
                width: double.infinity,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// user name
                    TextFormField(decoration: InputDecoration(
                        hintText: "username or email",
                        suffixIcon: Icon(Icons.account_circle_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                      validator: (userid)
                      {
                        if(userid!.isEmpty || !userid.contains('@'))
                          {
                            return "invalid user id";
                          }
                        else
                          {
                            return null ;
                          }
                      },),

                    /// password
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: TextFormField(
                        validator:(upassword)
                        {
                          confirmpass = upassword;
                          if(upassword!.isEmpty || upassword.length<4)
                            {
                              return "Invalid password";
                            }
                          else
                            {
                              return null;
                            }
                        },obscureText: showpwd,decoration: InputDecoration(
                            hintText: "password",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            suffixIcon: IconButton(onPressed: ()
                            {
                              setState(() {if(showpwd)
                              {
                                showpwd=false;
                              }
                              else
                              {
                                showpwd=true;
                              }
                              });
                            },
                                icon: Icon(showpwd==true
                                    ?Icons.visibility_off
                                    :Icons.visibility)
                            )
                        ),),
                    ),

                    /// conform password
                    TextFormField(
                      validator:(cupassword)
                      {
                        if(cupassword!.isEmpty || cupassword.length<4 || confirmpass != cupassword)
                        {
                          return "Invalid password";
                        }
                        else
                        {
                          return null;
                        }
                      },
                      obscureText: showpwd1,decoration: InputDecoration(
                        hintText: "confirm password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                        suffixIcon: IconButton(onPressed: ()
                      {
                      setState(() {if(showpwd1)
                      {
                        showpwd1=false;
                      }
                      else
                      {
                        showpwd1=true;
                      }
                                 });
                      },
                        icon: Icon(showpwd1==true
                            ?Icons.visibility_off
                            :Icons.visibility)
                    )
                    )
                    ),
                    ElevatedButton(onPressed: (){final valid = formkey.currentState!.validate();
                      if(valid)
                        {Navigator.of(context).push(MaterialPageRoute(builder: (context) => HOME(),));}
                      }, child: Text("Register")),
                    TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loginss(),));}, child: Text("Existing user , login")),
                            ],
                            ),
                            )
                            ),
                            )
                            );
  }
}
