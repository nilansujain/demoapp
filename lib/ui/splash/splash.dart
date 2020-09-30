import 'dart:async';


import 'package:demo_app/ui/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StartState();
  }

}

class StartState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/splash_logo.png"),
                margin: EdgeInsets.only(left: 50,right: 50,top: 60),
              ),

//            CircularProgressIndicator(
//              backgroundColor: Colors.white,
//              strokeWidth: 3,
//            )
            ],
          ),
        ),
      ),
    );
  }

  startTimer() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }


  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
//  Navigator.pushNamed(context, "/ui/login");
  }
}