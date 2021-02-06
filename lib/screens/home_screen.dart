import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            Center(
              child: Text("Scan Item",textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),
                ),
            ),

        actions: [
          Container(
            child: Text("Logout",textAlign: TextAlign.end,
                style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            )),
            padding: EdgeInsets.only(top: 18,right: 8),
          )
        ],
        leading: IconButton(
            icon: Icon(Icons.camera_alt_sharp),
            iconSize: 35,
            color: Colors.orange,
            onPressed: (){

            }),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.scanner_outlined),
          title: Text("Scan Item"),),
          BottomNavigationBarItem(icon: Icon(Icons.line_weight_sharp),
          title: Text("Scanned Items")),
          BottomNavigationBarItem(icon: Icon(Icons.settings_sharp),
          title: Text("Setting")),
          
            ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
          ),

    );
  }
}
