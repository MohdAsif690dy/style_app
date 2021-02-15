//import 'dart:ffi';
//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:style_app/db/auth.dart';
import 'package:style_app/screens/home_screen.dart';
import 'package:style_app/screens/market_place.dart';
import 'package:style_app/screens/navigation_bar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  bool isRemember = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //appBar: ,
      //appBar: Image.asset("assets/images/logo1.svg"),
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
          children: [Padding(padding: EdgeInsets.only(top: 20)),
            SvgPicture.asset("assets/images/logo1.svg",
              height: 100,width: MediaQuery.of(context).size.width,),
            Container(
              color: Colors.white,
             //height: 400,
              //height: MediaQuery.of(context).size.height*0.67,
              width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 10),
            //),
          child:  ListView(
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Email Address",style: TextStyle(fontSize: 25,color: Colors.orange),),
                TextField(
                  //scrollPadding: EdgeInsets.only(left: 20),
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.only(left: 10),
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
                /*Visibility(
                  visible: isVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Web Server URL",style: TextStyle(fontSize: 25,color: Colors.orange),),
                  //Padding(padding: EdgeInsets.only(left: 20)),

                  TextField(
                      decoration: InputDecoration(
                        hintText: "Enter web server URL",
                        //labelText: "Password",
                          labelStyle: TextStyle(
                              fontSize: 30,
                              color: Colors.orange
                          ))),]),
                ),*/
                Visibility(
                  visible: isVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Number of Cached Items",style: TextStyle(fontSize: 22,color: Colors.orange),),
                  //Padding(padding: EdgeInsets.only(left: 20)),
                  //Text("Number of Cached Items",style: TextStyle(fontSize: 22,color: Colors.orange,fontWeight: FontWeight.w500),),
                  TextField(
                      decoration: InputDecoration(
                        //labelText: "Password",
                          labelStyle: TextStyle(
                              fontSize: 30,
                              color: Colors.orange
                          ))),
               ]),
                ),
               //Padding(padding: EdgeInsets.only(bottom: 7),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text("Remember Me",
                       style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic,
                           color: Colors.orange)),
                   Padding(padding: EdgeInsets.only(right: 170,top: 40)),
                   FlutterSwitch(value: isRemember, onToggle: (bool y){
                     setState(() {
                       //isVisible = s;
                       isRemember = y;
                     });
                   },
                     height: 30,
                     width: 50,
                     activeColor: Colors.green,
                     padding: 2,
                   )
                   //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,)
                 ],
               ),
               Divider(
                 color: Colors.black,
               ),
               //TextField(),
               Row(
                 children: [
                   Text("Advanced Settings",
                     style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,
                         color: Colors.orange),),
                   Padding(padding: EdgeInsets.only(right: 135,bottom: 40)),
                    FlutterSwitch(value: isVisible, onToggle: (bool s){
                       setState(() {
                         isVisible = s;
                       });
                     },
                      width: 50,
                      height: 30,
                      activeColor: Colors.green,
                      padding: 2,
                  )
    ]
               ),

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
                color: Colors.orange,
                onPressed: (){
                  AzureAuthOperations opr = AzureAuthOperations();
                  opr.login();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>MarketPlace()),);
                },
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400)),

              ),
            )
    ],
    )

    );
  }
}
