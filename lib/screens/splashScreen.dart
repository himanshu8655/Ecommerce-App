import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/stings.dart';
import 'introduction_1.dart';


class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Introduction1())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Logo.png"),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since"
              ,textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
            )
          ],
        ),
      ),
    );
  }
}
