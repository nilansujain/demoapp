import 'package:demo_app/ui/Deliverytime/DeliveryTimeSlot.dart';
import 'package:demo_app/ui/category/Category.dart';
import 'package:demo_app/ui/items/item_minimum_order_delivery.dart';
import 'package:demo_app/ui/items/item_productlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  Cart createState() => Cart();
}

class Cart extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Cart",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          leading: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            IconButton(
              icon: Image.asset(
                "assets/images/ic_plush.png",
                height: 20,
                width: 20,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Category()));
              },
            ),
            IconButton(
                icon: Image.asset(
              "assets/images/ic_delete_cart.png",
              height: 20,
              width: 20,
            )),
          ],
        ),
        body: Column(
          children: [
            // empty cart
//                Visibility(
//                  visible: false,
//                  maintainState: true,
//
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Container(
//                          child:
//                          Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   crossAxisAlignment: CrossAxisAlignment.center,
//                            children: [
//                              Image.asset("assets/images/empty_cart.png",
//                              height: 200.0,
//                              width: 150.0,),
//
//                              Text("Your Bag Is Empty",
//                              style: TextStyle(
//                                fontSize: 18
//                              ),),
//
//                              Container(
//                                margin: EdgeInsets.only(top: 20.0),
//                                alignment: Alignment.center,
//                                height: 50,
//                                width: 200,
//                                color: Colors.green,
//                                child: FlatButton(onPressed: ()
//                                    {
//                                      Navigator.pop(context);
//                                    }, child: Text("Start Shopping",
//                                style: TextStyle(
//                                  fontSize: 16.0,
//                                  color: Colors.white,
//                                ),)),
//                              )
//                            ],
//                          ),
//                        ),
//                    ],
//                  ),
//
//                ),

            MinimumOrder(),

            Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int position) {
                            return ItemProductList();
                          }),
                    ),


                    //text total saving
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
                      alignment: Alignment.center,
                      child: Text("Your Total Saving Riyal 16 (7%)"),
                    ),

                    //price part
                    Row(
                      children: [
                        //product price
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              alignment: Alignment.centerRight,
                              child: Text("Product Price"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              alignment: Alignment.centerRight,
                              child: Text("1550 Riyal"),
                            )
                          ],
                        )),

                        //total price
                        CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.green,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Total",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "1,750",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Riyal",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),

                        //delivery charges
                        Expanded(
                            child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              alignment: Alignment.centerLeft,
                              child: Text("Delivery Charges"),
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Text("25 Riyal"),
                            ),
                          ],
                        )),
                      ],
                    ),

                    //button Complete order
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      alignment: Alignment.center,
                      color: Colors.purple[800],
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeliveryTimeSlot()));
                        },
                        child: Text(
                          "COMPLETE ORDER",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      height: 50,
                    ),
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
