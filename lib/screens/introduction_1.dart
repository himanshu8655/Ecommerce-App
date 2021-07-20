import 'package:ambica/screens/introduction_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ambica/screens/sign_in.dart';
import 'package:flutter/services.dart';
import 'package:ambica/paint_wave.dart';




class Introduction1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: Text('Do you want to exit the App'),
            actions: <Widget>[
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false); //Will not exit the App
                },
              ),
              TextButton(
                child: Text('Yes'),
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop'); //Will exit the App
                },
              )
            ],
          );
        },
      ) ?? false;
    }
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          // Note: Sensitivity is integer used when you don't want to mess up vertical drag
          int sensitivity = 8;
          if (details.delta.dx > sensitivity) {

            // Right Swipe|
          } else if(details.delta.dx < -sensitivity){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Introduction2()));
            //Left Swipe
          }
        },
        child: SafeArea(
          child: Scaffold(
            body: Container(
              child:  Padding(
                padding: const EdgeInsets.fromLTRB(0,40,0,0),
                child: GestureDetector(

                  child: Stack(
                    children: [
                      Align(alignment: Alignment.topCenter,child: Image.asset("assets/pageview_img.png")),

                      Align(alignment: Alignment.bottomCenter,child: Paint_Wave(container_height: 700)),

                      Align(alignment: Alignment.topRight,child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,20,0),
                        child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));},
                            child: Text("Skip",style: TextStyle(fontSize:16,color: Colors.red,fontWeight: FontWeight.bold))),
                      )),
                      Align(alignment: Alignment.bottomRight,child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,25,25),
                        child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Introduction2()));},
                            child: Container(
                              width: 50,
                              height: 50,

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.red,size: 12,)),
                            )),
                      )),

                      Align(alignment: Alignment.bottomRight,child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center ,//Center Row contents horizontally,
                          children: [
                            Icon(Icons.circle,color: Colors.white,size: 13),
                            Icon(Icons.circle,color: Colors.white70,size: 8)
                          ],
                        ),
                      )),
                      Align(alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(18,18,18,120),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is a dummy text",textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,fontSize: 18),),
                          )),
                      Align(alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(18,18,18,210),
                            child: Text("Easy Management",textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          )),

                    ],
                  ),
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
