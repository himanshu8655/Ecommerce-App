import 'package:ambica/screens/introduction_1.dart';
import 'package:flutter/material.dart';
import 'package:ambica/paint_wave.dart';
import 'package:ambica/screens/sign_in.dart';
class Introduction2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // Note: Sensitivity is integer used when you don't want to mess up vertical drag
        int sensitivity = 8;
        if (details.delta.dx > sensitivity) {
      {Navigator.push(context, MaterialPageRoute(builder: (context)=>Introduction1()));}
        } else if(details.delta.dx < -sensitivity){
          //Left Swipe
          {Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));}
        }
      },
      child: Scaffold(
        body: Container(
          child:  Padding(
            padding: const EdgeInsets.fromLTRB(1,100,1,0),
            child: Stack(
              children: [
                Align(alignment: Alignment.topCenter,child: Image.asset("assets/pageview_img2.png")),
                Align(alignment: Alignment.bottomCenter,child: Paint_Wave(container_height: MediaQuery.of(context).size.height)),
                Align(alignment: Alignment.bottomRight,child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,20,20),
                  child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));},
                      child: Container(
                    width: 45,
                    height: 45,

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
                      Icon(Icons.circle,color: Colors.white70,size: 8,),
                      Icon(Icons.circle,color: Colors.white,size: 13),

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
                      child: Text("Bills & Payment",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    )),
              ],
            ),
          ),
        ),

      ),
    );
  }
}


