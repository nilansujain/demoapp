import 'package:demo_app/ui/location/Change_location_by_map.dart';
import 'package:demo_app/ui/location/current_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseAddress extends StatefulWidget {
  @override
  _ChooseAddress createState() {
    return _ChooseAddress();
  }

}


class _ChooseAddress extends State<ChooseAddress>
  {
  @override
  Widget build(BuildContext context) {

    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.green,
              title: Text("Zedcart",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            body:
            Column(
//              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                //text choose delivery
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40.0),
                  child: Text("Choose Your Delivery Address",style:
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                ),

                //current location
                FlatButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CurrentLocation()));
                  },
                 child : Card(
                    color: Colors.green,
                    margin: EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
                    child: Container(
                      height: 50.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Current Location",
                                style:
                                TextStyle(
                                  color: Colors.white,

                                ),),
                            ),
                          ),
                          Container
                            (
                            margin: EdgeInsets.only(right: 20.0),

                              child: Icon(Icons.my_location,
                              color: Colors.white,
                              size: 30.0,),

                            ),

                        ],

                      ),
                    ),
                  ),
                ),

                //choose on the map
                FlatButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationByMap()));
                  },
                  child: Card(
                    color: Colors.green,
                    margin: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
                    child: Container(
                      height: 50.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Text("Choose On The Map",
                                style:
                                TextStyle(
                                  color: Colors.white,

                                ),),
                            ),
                          ),
                          Container
                            (
                            margin: EdgeInsets.only(right: 20.0),

                              child: Icon(Icons.location_on,
                                color: Colors.white,
                              size: 35.0,),

                          ),
                        ],

                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        );

  }
  }
