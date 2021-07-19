import 'package:flutter/material.dart';
import 'package:ambica/screens/home_page.dart';

class OTP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(
                 height: 40,
               ),

               Align(alignment: Alignment.bottomCenter,child: Text("Enter OTP",textAlign:TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
               Align(alignment: Alignment.bottomCenter,child: Image.asset("assets/otp_img.png")),
               Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Align(alignment: Alignment.bottomCenter,child: Text("Enter 4-digit OTP",textAlign:TextAlign.center,style:TextStyle(fontSize: 18))),
               ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                               width: 1, color: Colors.red[400], style: BorderStyle.solid)),
                       child: TextField(
                         style: TextStyle(
                             fontSize: 22
                         ),
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         maxLength: 1,
                         decoration: InputDecoration(
                             counterText: '',
                             hintStyle: TextStyle(color: Colors.red),
                             contentPadding: EdgeInsets.all(15),
                             border: InputBorder.none),
                         onChanged: (value) {

                         },
                       ),

                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                               width: 1, color: Colors.red[400], style: BorderStyle.solid)),
                       child: TextField(
                         style: TextStyle(
                             fontSize: 22
                         ),
                         keyboardType: TextInputType.number,

                         textAlign: TextAlign.center,
                         maxLength: 1,
                         decoration: InputDecoration(
                             counterText: '',
                             hintStyle: TextStyle(color: Colors.red),
                             contentPadding: EdgeInsets.all(15),
                             border: InputBorder.none),
                         onChanged: (value) {},
                       ),

                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                               width: 1, color: Colors.red[400], style: BorderStyle.solid)),
                       child: TextField(
                         style: TextStyle(
                             fontSize: 22
                         ),
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         maxLength: 1,
                         decoration: InputDecoration(
                             counterText: '',
                             hintStyle: TextStyle(color: Colors.red),
                             contentPadding: EdgeInsets.all(15),
                             border: InputBorder.none),
                         onChanged: (value) {},
                       ),

                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                               width: 1, color: Colors.red[400], style: BorderStyle.solid)),
                       child: TextField(
                         style: TextStyle(
                             fontSize: 22
                         ),
                         keyboardType: TextInputType.number,
                         textAlign: TextAlign.center,
                         maxLength: 1,
                         decoration: InputDecoration(
                           counterText: '',
                             hintStyle: TextStyle(color: Colors.red),
                             contentPadding: EdgeInsets.all(15),
                             border: InputBorder.none),
                         onChanged: (value) {},
                       ),

                     ),
                   ),
                 ],
               ),
               Align(alignment: Alignment.topRight,child: Padding(padding: const EdgeInsets.fromLTRB(0, 10, 30, 40),
                 child: Text("Resend OTP",style:TextStyle(fontSize: 18)),)),
               InkWell(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                 child: ElevatedButton(
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 20)),
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
