import 'package:demo_app/ui/items/item_deliverytime.dart';
import 'package:demo_app/ui/trackorder/trackorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryTimeSlot extends StatefulWidget
{
  deliverytime createState() => deliverytime();
}

class deliverytime extends State<DeliveryTimeSlot>
{
  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(title: Text("Delivery Time ",
            style: TextStyle(
              color: Colors.white
            ),),
            backgroundColor: Colors.green,
            leading: IconButton(
              onPressed: ()
              {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,
              color: Colors.white,),
            ),),

            body:
              Column(
                children: [



                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child:
                            Text("Choose When We Can Deliver Your Order",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                          ),

                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(top: 20,left: 10, bottom: 10),
                                  child: Text("Monday",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),),
                                ),

                            // Container(
                            //   padding: const EdgeInsets.all(10.0),
                            //   child: GridView.builder(
                            //     scrollDirection: Axis.vertical,
                            //     physics: NeverScrollableScrollPhysics(),
                            //     shrinkWrap: true,
                            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            //       crossAxisCount: 2,
                            //       childAspectRatio: 1.0,
                            //     mainAxisSpacing: 10.0,
                            //     crossAxisSpacing: 20.0,
                            //   ),
                            //   itemCount: 6,
                            //     itemBuilder: (context, index) {
                            //       return
                            //
                            //         Container(
                            //           child:
                            //
                            //           ItemDeliveryTime(),
                            //
                            //         );
                            //     },
                            //   ),
                            // ),

                                SizedBox(
                                  height: 400,
                                    child: GridView.count(
                                      crossAxisCount: 2 ,
                                      children: List.generate(50,(index){
                                        return Container(
                                            child: ItemDeliveryTime(),
                                        );
                                      }),
                                    ),

                                )


]
                          ),

                          )],
                      ),
                    ),

//button place ordr
                Container(
                  height: 50,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: FlatButton(onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackOrder()));
                    },
                    child: Text("PLACE ORDER",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                  ),
                )
                ],
              ),
          ),
        );
  }

}