import 'package:class_flutter/10_5_23_statefull_Register.dart';
import 'package:flutter/material.dart';

import '10_3_23_homepage.dart';

class Loginss extends StatefulWidget {
  const Loginss({Key? key}) : super(key: key);

  @override
  State<Loginss> createState() => _LoginssState();
}

class _LoginssState extends State<Loginss> {
  var showpwd = true;
  var formkey = GlobalKey<FormState>();

  /// user name and password
  String name = "appu@";
  String pas = "1234ap";

  /// controller fetched data
  TextEditingController usp = TextEditingController();
  TextEditingController psd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(backgroundColor: Colors.green,
          title: Text("login statefull")),
      
      
      body: Form(
        key: formkey,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("log in",
                  style:TextStyle(fontSize: 40,
                      color: Colors.green[700])),

                 /// user id box
              SizedBox(height: 60,width: 250,
                  child: TextFormField(controller:usp,
                                      validator: (uname){
                    if(uname!.isEmpty || !uname.contains('@'))
                      {
                        return "enter a valid data";
                      }
                    else
                      {
                        return null;
                      }
                    }, decoration: InputDecoration(suffixIcon:Icon(Icons.account_circle_rounded),
                      hintText: "username" , border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                      )
                  )
                    )
              ),



              /// password box
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 5),
                child: SizedBox(height: 60,width: 250,
                    child: TextFormField(controller:psd,
                                         validator: (password){
                  
                      if(password!.isEmpty || password.length<6)
                        {
                          return "enter valid password";
                        }
                      else
                        {
                          return null;
                        }
                    },

                      /// password letter to > ***/...

                      obscureText: showpwd, decoration: InputDecoration(hintText: "password",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {if(showpwd)
                                    {
                                      showpwd= false;
                                    }
                                  else
                                    {
                                      showpwd = true;
                                    }
                                });
                              },
                              icon:Icon(showpwd==true
                                  ? Icons.visibility_off
                                  :Icons.visibility)
                          )
                      )
                    )
                )
              ),


              SizedBox(height: 30,width: 100,
                  child: ElevatedButton(onPressed: ()
                  {
                    String email = usp.text.trim();
                    String pas1  = psd.text.trim();

                    final valid = formkey.currentState!.validate();/// manasilayilla
                    if(valid)
                    {
                      if(name == email && pas == pas1)
                          {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HOME(),
                            ));
                          }
                    }
                  },
                      child: Text("log in"))),



              TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));}, child: Text("not a user,register?"))
            ],
          ),
        ),
      ),
    );
  }
}
