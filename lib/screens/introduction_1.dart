import 'package:ambica/utilities/routes.dart';
import 'package:ambica/screens/introduction_2.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/painting.dart';
import 'package:ambica/screens/sign_in.dart';
import 'package:flutter/services.dart';

class Paint_Wave extends StatelessWidget {
  final String text_content;
  final String text_heading;
 Paint_Wave({
this.text_heading,this.text_content
});
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
      child: Container(
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width,800),
          painter: CurvedPainter(),
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red[400];
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    var path = Path();
    path.moveTo(0, size.height * 0.45);
    path.quadraticBezierTo(size.width * 0.05
        , size.height * 0.6,
        size.width * 0.5, size.height * 0.474);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.moveTo( size.width * 0.4, size.height * 0.5);

    path.quadraticBezierTo( size.width * 0.8, size.height * 0.39,
    size.width*1.0, size.height * 0.45);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class Introduction1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Scaffold(
        body: Container(
          child:  Padding(
            padding: const EdgeInsets.fromLTRB(0,100,0,0),
            child: GestureDetector(

              child: Stack(
                children: [
                  Align(alignment: Alignment.topCenter,child: Image.asset("assets/pageview_img.png")),

                  Align(alignment: Alignment.bottomCenter,child: Paint_Wave(text_heading: "head",text_content: "body")),

                  Align(alignment: Alignment.topRight,child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,13,0),
                    child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));},
                        child: Image.asset("assets/Skip.png")),
                  )),
                  Align(alignment: Alignment.bottomRight,child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,25,25),
                    child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Introduction2()));},
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
                    padding: const EdgeInsets.fromLTRB(0,0,20,40),
                    child: InkWell(onTap: (){},child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center ,//Center Row contents horizontally,
                      children: [
                        Icon(Icons.circle,color: Colors.white,size: 15,),
                        Icon(Icons.circle,color: Colors.white70,size: 10,)
                      ],
                    )),
                  )),



                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
