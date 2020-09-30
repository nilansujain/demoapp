import 'package:demo_app/ui/location/choose_adress.dart';
import 'package:demo_app/ui/menu/bottom_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectAddress extends StatefulWidget
{
  _SelectAddress createState() => _SelectAddress();
}

class _SelectAddress extends State<SelectAddress> {
  // final List<String> place= ["home", "office"];
  // final List<String> address = ["14, shyam vihar, behind pinrapol gaushal, near water tank, sanganer, jaipur", "office address"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Delivery Address",
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.green,
        // leading: FlatButton(onPressed:null,
        //      child:Icon(icon)),
      ),
      body:
      Column(
        children: [

          // text choose address
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            alignment: Alignment.center,
            child: Text("Choose Your Delivery Address",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),),
          ),

          //space for list

          Expanded(
            child: ListView.builder(
//              itemCount: address.length,
            itemCount: 10,
                itemBuilder: (BuildContext context, int position)
            {
              return
                  Container(
                    height: 90.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                    child: FlatButton(onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomMenu()));
                        },
                        child:
                    Column(
                      children: [

                        //upper row
                        Row(
                          children: [

                            //place
                            Expanded(
                              child:


                      Container(
//                                margin: EdgeInsets.only(top: 10.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Home",style:
                                TextStyle(
                                color: Colors.white,
                                ),),
                                ),
                                ),

                                //delete image
                                Container(
                                child: IconButton(
                                onPressed: ()
                                {
                                print("address deleted");
                                },
                                icon: Image.asset("assets/images/ic_delete_cart.png",
                                height: 20,
                                width: 20,),
                                ),
                                ),
                                ],
                                ),

                                //address
                                Container(
//                          margin: EdgeInsets.only(top: 10.0),
                                child: Text("14,shyam vihar, behind pinjrapol gaushala, sanganer, jaipur",

                            maxLines: 2,
                            style:
                            TextStyle(
                              color: Colors.white
                            ),),

                        ),



                      ],
                    )),


                  );
            })
          ),



          //line or
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
              color: Colors.grey[400],
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


          // add new address button
          Container(
            height: 45.0,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 30.0),
            color: Colors.deepPurple,
            child: FlatButton(
              onPressed: ()
              {
               Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseAddress()));
              },
              child: Row(
                children: [
                  Expanded(
                    child: Text("ADD NEW ADDRESS",
                      style:TextStyle(
                        color: Colors.white,
                      )
                      ),
                  ),

                  Icon(Icons.add,color: Colors.white,)

                ],
              ),
            ),
          )

        ],
      ),
    );

  }
}