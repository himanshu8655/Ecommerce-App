import 'package:flutter/material.dart';
import 'package:relative_layout/relative_layout.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(1,120,1,0),
          child: Stack(
            children: [
              Align(alignment: Alignment.topCenter,child: Image.asset("assets/Logo.png")),
              RotationTransition(turns: new AlwaysStoppedAnimation(-3/360),
                  child: Align(alignment: Alignment.bottomCenter,child: Image.asset("assets/pageview_color1.png"))),
              Align(alignment: Alignment.bottomCenter,child: Image.asset("assets/pageview_color2.png")),
            ],
          ),
        ),
      ),
    );
  }
}
