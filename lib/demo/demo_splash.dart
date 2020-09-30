import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class demo_splash extends StatefulWidget {
  _demo_splash createState() {

  return

  _demo_splash();
}
  }

  class _demo_splash extends State<demo_splash>
  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body:
        



                Container(
                  
                  child: Stack
                    (
                    children: <Widget>[

                      Center
                        (
                        child: Image.asset("assets/images/sample.jpeg"),
                      ),
                      Container(

                        alignment: Alignment.center,
                        child: Image.asset("assets/images/logo.png"),
                      )
                    ],
                  )
                 
                ),



      ),
    );
  }


}