//import 'dart:ffi';
//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.black,
      body:
        //height: MediaQuery
            //.of(context)
            //.size
            //.width,
        //width: MediaQuery
          //  .of(context)
            //.size
            //.width,
       // padding: EdgeInsets.only(top: 30),
         Column(
          children: [Padding(padding: EdgeInsets.only(top: 30)),
            Image.asset("assets/images/logo.png"),
            Container(
              color: Colors.white,
             //height: 400,
              height: MediaQuery.of(context).size.height*0.61,
              width: MediaQuery.of(context).size.width,
            //padding: EdgeInsets.only(top: 0.01),
            //),
          child:  ListView(
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              children: [
                Text("Email Address",style: TextStyle(fontSize: 25,color: Colors.orange),),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Email Address",
                    //labelText: "Email Address",
                    labelStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.orange
                    ),
                  ),
                ),
               Text("Password",style: TextStyle(fontSize: 25,color: Colors.orange),),
                TextFormField(
                    decoration: InputDecoration(
                      //labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.orange
                        ))),
                Text("Web Server URL",style: TextStyle(fontSize: 25,color: Colors.orange),),
                TextField(
                    decoration: InputDecoration(
                      hintText: "Enter web server URL",
                      //labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.orange
                        ))),
                Text("Number of Cached Items",style: TextStyle(fontSize: 22,color: Colors.orange),),
                //Text("Number of Cached Items",style: TextStyle(fontSize: 22,color: Colors.orange,fontWeight: FontWeight.w500),),
                TextField(
                    decoration: InputDecoration(
                      //labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.orange
                        ))),
               Padding(padding: EdgeInsets.only(bottom: 7),),
               Text("Remember Me",style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic,color: Colors.orange)),
                Padding(padding: EdgeInsets.only(top: 5)),
               Divider(
                 color: Colors.black,
               ),
               //TextField(),
               Text("Advanced Settings",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.orange),),
               // Switch(value: false, onChanged: value(Container()) ) //value(Container container);
            ]),
    ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              height: 50,
              width: 390,
              color: Colors.orange,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                color: Colors.deepOrange,
                onPressed: null,
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400)),

              ),
            )
            /*RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
              color: Colors.white,
              onPressed: null, //{ Get.offAll(Login()); },
              child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 20),),
            ),*/
            //RaisedButton(onPressed: null,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0),),color: Colors.orange,),
    ],
    )

    );
  }
}

value(Container container) {
  Container(
  color: Colors.white,
  //height: 400,
  height: 50,
  width: 50,
  //padding: EdgeInsets.only(top: 0.01),
  //),
  child:  ListView(
  shrinkWrap: true,
  //physics: NeverScrollableScrollPhysics(),
  children: [
  Text("Email Address",style: TextStyle(fontSize: 25,color: Colors.orange),),
  TextField(
  decoration: InputDecoration(
  hintText: "Enter Your Email Address",
  //labelText: "Email Address",
  labelStyle: TextStyle(
  fontSize: 30,
  color: Colors.orange
  ),
  ),
  ),
  Text("Password",style: TextStyle(fontSize: 25,color: Colors.orange),),
  TextField(
  decoration: InputDecoration(
  //labelText: "Password",
  labelStyle: TextStyle(
  fontSize: 30,
  color: Colors.orange
  ))),
  ]
  )
  );
  return container;
}
     