import 'package:ambica/screens/phone_OTP.dart';
import 'package:flutter/material.dart';
import 'package:ambica/screens/introduction_1.dart';

import '../paint_wave.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(alignment: Alignment.bottomCenter,child: Paint_Wave(container_height: 700)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,80,0,0),
            child: Align(alignment: Alignment.topCenter,child: Image.asset("assets/sign_in_img.png")),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0,250,0,0),
            child: Align(alignment: Alignment.topCenter,child: Text("Sign In",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 35))),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(35, 295, 35, 5),
            child: Align(alignment: Alignment.topCenter,
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",textAlign:TextAlign.center,style:TextStyle(fontSize: 15))),
          ),

          Text("Enter Your Registered mobile number",style: TextStyle(fontSize: 15),),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(
                      width: 1, color: Colors.red[400], style: BorderStyle.solid)),
              child: TextField(
                style: TextStyle(
                    fontSize: 20
                ),
                maxLength: 10,
                maxLines: 1,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    counterText: "",
                    hintText: 'Enter Mobile Number',
                    hintStyle: TextStyle(color: Colors.red),
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),

            ),
          ),
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));},
            child:
            ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Send OTP",style: TextStyle(color: Colors.white,fontSize: 18)),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((Color) => Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            side: BorderSide(color: Colors.red)
                        )
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}
