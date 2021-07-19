import 'package:flutter/material.dart';

class OTP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Column(
           children: [
             SizedBox(
               height: 40,
             ),

             Align(alignment: Alignment.bottomCenter,child: Text("Enter OTP",textAlign:TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
             Align(alignment: Alignment.bottomCenter,child: Image.asset("assets/otp_img.png")),
             Align(alignment: Alignment.bottomCenter,child: Text("Enter 4-digit OTP",textAlign:TextAlign.center,style:TextStyle(fontSize: 18))),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: 40,
                     height: 40,

                     child: TextField(
                       textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
                       decoration: new InputDecoration(
                           border: new OutlineInputBorder(
                             borderRadius: const BorderRadius.all(
                               const Radius.circular(10.0),
                             ),
                           ),
                           fillColor: Colors.white70),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: 40,
                     height: 40,
                     child: TextField(
                       textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
                       decoration: new InputDecoration(
                           border: new OutlineInputBorder(
                             borderRadius: const BorderRadius.all(
                               const Radius.circular(10.0),
                             ),
                           ),
                           fillColor: Colors.white70),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: 40,
                     height: 40,
                     child: TextField(
                       textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
                       decoration: new InputDecoration(
                           border: new OutlineInputBorder(
                             borderRadius: const BorderRadius.all(
                               const Radius.circular(10.0),
                             ),
                           ),
                           fillColor: Colors.white70),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     width: 40,
                     height: 40,
                     child: TextField(
                       textAlign: TextAlign.center,style: TextStyle(fontSize: 20),
                       decoration: new InputDecoration(
                           border: new OutlineInputBorder(
                             borderRadius: const BorderRadius.all(
                               const Radius.circular(10.0),
                             ),
                           ),
                           fillColor: Colors.white70),
                     ),
                   ),
                 ),
               ],
             ),
             Align(alignment: Alignment.topRight,child: Padding(padding: const EdgeInsets.fromLTRB(0, 10, 20, 40),
               child: Text("Resend OTP",style:TextStyle(fontSize: 18)),)),
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
    );
  }
}
