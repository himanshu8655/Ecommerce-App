import 'package:ambica/screens/phone_OTP.dart';
import 'package:flutter/material.dart';
import 'package:ambica/screens/introduction_1.dart';

import '../paint_wave.dart';
class TP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Align(alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
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
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Align(alignment: Alignment.bottomCenter,child: Paint_Wave(container_height: 2700)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,0,25,270),
                        child: Align(alignment:Alignment.bottomCenter,child: Text("Enter Your Registered mobile number",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.white))),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,0,30,190),
                        child: Align(alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                border: Border.all(
                                    width: 1, color: Colors.white, style: BorderStyle.solid)),
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 18
                              ),
                              maxLength: 10,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  counterText: "",
                                  hintText: 'Enter Mobile Number',
                                  hintStyle: TextStyle(color: Colors.white),
                                  contentPadding: EdgeInsets.all(12),
                                  border: InputBorder.none),
                              onChanged: (value) {},
                            ),

                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));},
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8,0,8,110),
                          child: Align(alignment: Alignment.bottomCenter,
                            child: ElevatedButton(
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text("Send OTP",style: TextStyle(color: Colors.red,fontSize: 18)),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith((Color) => Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(28.0),
                                            side: BorderSide(color: Colors.red)
                                        )
                                    )
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

          Padding(
            padding: const EdgeInsets.fromLTRB(25,0,25,270),
            child: Align(alignment:Alignment.bottomCenter,child: Text("Enter Your Registered mobile number",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,30,190),
            child: Align(alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                        width: 1, color: Colors.white, style: BorderStyle.solid)),
                child: TextField(
                  style: TextStyle(
                      fontSize: 18
                  ),
                  maxLength: 10,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Enter Mobile Number',
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none),
                  onChanged: (value) {},
                ),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));},
            child:
            Padding(
              padding: const EdgeInsets.fromLTRB(8,0,8,110),
              child: Align(alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Send OTP",style: TextStyle(color: Colors.red,fontSize: 18)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((Color) => Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(color: Colors.red)
                            )
                        )
                    )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
