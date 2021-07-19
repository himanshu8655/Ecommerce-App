import 'package:ambica/screens/introduction_1.dart';
import 'package:flutter/material.dart';
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
                Align(alignment: Alignment.bottomCenter,child: MyBookings()),
                Align(alignment: Alignment.bottomRight,child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,20,20),
                  child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));},
                      child: Image.asset("assets/pageview_btn1.png",height: 50,width: 50,)),
                )),
                Align(alignment: Alignment.bottomRight,child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,20,40),
                  child: InkWell(onTap: (){},child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,//Center Row contents horizontally,
                    children: [
                      Icon(Icons.circle,color: Colors.white70,size: 10,),
                      Icon(Icons.circle,color: Colors.white,size: 15,),

                    ],
                  )),
                )),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
