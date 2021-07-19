import 'package:ambica/screens/phone_OTP.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          child:  Column(
            children: [
              SizedBox(height: 120),
              Align(alignment: Alignment.topCenter,child: Image.asset("assets/Logo.png")),
              SizedBox(height: 30),
              Align(alignment: Alignment.topCenter,child: Text("Sign In",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40))),


              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35, 5),
                child: Align(alignment: Alignment.topCenter,child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",textAlign:TextAlign.center,style:TextStyle(fontSize: 15))),
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(color: Colors.red),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                    onChanged: (value) {},
                  ),

                ),
              ),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));},
                child: ElevatedButton(
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
        ),
      ),
    );
  }
}
