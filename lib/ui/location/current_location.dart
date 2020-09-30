import 'package:demo_app/demo/dialog_demo.dart';
import 'package:demo_app/ui/location/Change_location_by_map.dart';
import 'package:demo_app/ui/location/dialog_delivery_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'choose_adress.dart';

class CurrentLocation extends StatefulWidget
{
  _CurrentLocation createState()
  {
    return _CurrentLocation();
}
}

class _CurrentLocation extends State<CurrentLocation>
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: FlatButton(onPressed: ()
              {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseAddress()));
          Navigator.pop(context);
              }, child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
          
          backgroundColor: Colors.green,
          title:
          Text("Zedcart"),
        ),

        body:

        SingleChildScrollView(
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // text choose address
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40.0)
                  ,child: Text("Choose Your Delivery Address")),

              // choose on the map
              FlatButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LocationByMap()));
                },
                child: Container(
                  alignment: Alignment.center,
                    color: Colors.green,
                    margin: EdgeInsets.all(40.0),
                    height: 50.0,
                    child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Choose On the Map",
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.location_on,
                        color: Colors.white,
                        size: 30.0,),
                      ),
                    ],
                  ),
                ),
              ),

          //line with or
          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 40.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),

            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(width: 1, color: Colors.grey)
                ),child: Container(
                padding: EdgeInsets.all(4.0),
                child: Text("OR"))),

            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only( right: 40.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
          ]),

              //slect city

              Container(
                margin: EdgeInsets.only(top: 80, left: 40, right: 40),
                height: 60,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        side: BorderSide(width: 2, color: Colors.green)
                    ),
                  child:
                  Row(
                    children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Select City")),
                        ),
                      FlatButton(onPressed: null, child: Icon(Icons.keyboard_arrow_down,
                      size: 30.0,))
                      
                    ],
                  ),
                ),
              ),

              //select region
              Container(
                margin: EdgeInsets.only( left: 40, right: 40),
                height: 60,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      side: BorderSide(width: 2, color: Colors.green)
                  ),
                  child:
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("Select Region")),
                      ),
                      FlatButton(onPressed: null, child: Icon(Icons.keyboard_arrow_down,
                        size: 30.0,))

                    ],
                  ),
                ),
              ),

              // select region button
              FlatButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DialogLocation()));
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  margin: EdgeInsets.only(left: 30.0, right: 30.0),
                  height: 50.0,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Select Region",
                        style: TextStyle(
                            color: Colors.white
                        ),),

                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.location_on,
                          color: Colors.white,
                          size: 30.0,),
                      ),
                    ],
                  ),
                ),
              ),
                      ],
                    ),
                  )),

    );



  }
}