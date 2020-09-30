import 'package:demo_app/helper/Appbar_helper.dart';
import 'package:demo_app/ui/address/select_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationByMap extends StatefulWidget
{
  _LocationByMap createState()

  {
    return _LocationByMap();
  }
}

class _LocationByMap extends State<LocationByMap> {
  @override
  Widget build(BuildContext context) {
    Appbarhelper appbarhelper;
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar:
            AppBar(
              title: Text("Zedcart",style: TextStyle(
              color: Colors.white
            ),),
            backgroundColor: Colors.green,
            leading: FlatButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Icon(Icons.arrow_back_ios,
            color: Colors.white,)),
            ),


            body:
            Column(
              children: [

                // search bar
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 70.0,
                  color: Colors.green,


                      child: Row(
                        children: [
                          // Container(
                          //   height: 45,
                          //   width: 40.0,
                          //   color: Colors.white,
                          //   child: Icon(Icons.search,
                          //   color: Colors.grey,),
                          // ),

                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: TextField(

                                enableSuggestions: true,
                                autocorrect: true,
                                maxLines: 1,

                                decoration: InputDecoration(
                                  prefixIcon:Icon(Icons.search,
                                      color: Colors.grey,),
                                  suffixIcon:FlatButton(
                                    onPressed: null, child:Image.asset("assets/images/close_circle.png",
                                      height: 30,
                                  width: 30,),
                                  ) ,
                                  hintText: "Search for Location",
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  )
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   alignment: Alignment.center,
                          //   height: 45,
                          //   width: 50,
                          //   color: Colors.white,
                          //   child: FlatButton(
                          //     onPressed: null, child:Image.asset("assets/images/close_circle.png",
                          //   ),
                          //  ),
                          //   ),

                        ],
                      ),
                    ),


                //map image

              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Center(
                    child: Image.asset("assets/images/map.png",
                        ),
                  ),
                ),
              ),

                TextField(
                  enabled: false,
                  maxLines: 2,
                  decoration: InputDecoration(

                  ),
                ),

                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: FlatButton(onPressed:()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectAddress()));
                    },
                  child: Text("SELECT",style: TextStyle(
                    color: Colors.white
                  ),),),
                ),



              ],
            )
          ),

        );

  }
}