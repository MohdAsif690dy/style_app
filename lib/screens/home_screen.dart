import 'dart:ui';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:style_app/screens/scan_items.dart';
import 'package:style_app/screens/scanned_items.dart';
import 'package:style_app/screens/settings_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String result;
  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            Center(
              child: Text("Scan Item",textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 23),
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
            onPressed: _scanQR,//()async{
              //String codeScanner = await
              //FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", false , ScanMode.BARCODE);

            ),
      ),
      body:
        ListView(
            children: [
              Container(
                height: 30,
                //color: Colors.amber,
                ),
              Divider(
                color: Colors.black,
              ),
              Container(
                height: 50,
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                height: 15,
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                height: 150,
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                height: 40,
                //color: Colors.lightBlue,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                   Text("UPC", style: TextStyle(
                     color: Colors.black,fontSize: 20, fontWeight: FontWeight.normal
                   ),),
                        Padding(padding: EdgeInsets.only(left: 20)),
                        //SizedBox(
                          //width: 300,
                          //child:
                          Container(
                            width: 300,
                            child: Flexible(
                              //flex: 1,
                              //fit: FlexFit.tight,
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero
                                    )
                                  ),
                                ),
                            ),
                          ),
                        //),




                    //TextFormField(
                      //decoration: InputDecoration(
                        //border: OutlineInputBorder(
                          //borderSide: BorderSide(
                          //  color: Colors.black//width: 10,//style: BorderStyle.solid
                          //)
                       // )
                      //),
                   // ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(padding: EdgeInsets.only(top: 130)),

                RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                        ),
                        color: Colors.orange,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>ScanItems()),
                          );
                        },
                        child: Text("View Chain Details",
                            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400)),
                      ),
            ],

          //color: Colors.greenAccent,
        ),



    );
  }
}
