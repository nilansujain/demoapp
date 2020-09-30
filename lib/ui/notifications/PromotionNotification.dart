
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Promotion extends StatefulWidget
{
  _promotion createState() => _promotion();
}

class _promotion extends State<Promotion>
{
  @override
  Widget build(BuildContext context) {
   return
       Scaffold(
         body:
         Column(
           children: [
             Expanded(child:
             ListView.builder(
               itemCount: 10,
                 itemBuilder: (BuildContext context, int position){
                 return
                     Expanded(
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.all(10.0),
                                 child: Image.asset("assets/images/ic_launcher.png",
                                 height: 30,
                                     width: 30,),
                               ),
                               Expanded(
                                   child: Container(
                                     margin: EdgeInsets.all(10.0),
                                 child: Text("New Order",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold
                                 ),),
                               ))

                             ],
                           ),
                           Container(
                             margin: EdgeInsets.all(10.0),
                             alignment: Alignment.topLeft,
                             child: Text("Order Confirmed"),
                           ),

                           Divider(
                             thickness: 1,
                             color: Colors.grey,
                           )

                         ],
                       ),
                     );
               }))
           ],
         ),
       );
  }
  
}