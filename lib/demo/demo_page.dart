import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class demopage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return
       Scaffold(
         appBar: AppBar(title: Text("Untitled"),
         backgroundColor: Colors.green,),

         body:
         Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Center(
                   child: Text("Comming Soon"),
                 ),

               Icon(Icons.tag_faces),
               Icon(Icons.tag_faces),
               Icon(Icons.tag_faces),


             ],
           ),
         ),

       );

  }

}