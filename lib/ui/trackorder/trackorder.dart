import 'package:demo_app/ui/items/item_itemdetail.dart';
import 'package:demo_app/ui/menu/bottom_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget
{
  _TrackOrder createState() => _TrackOrder();
}

class _TrackOrder extends State<TrackOrder>
{
  var Address = "14, ShaymVihar, behinf Pinjrapol gaushal, sanganare , jaipur";
  var Date ="2020-09-10";
  var Total ="100 Riyal";

  @override
  Widget build(BuildContext context) {
   return
       MaterialApp(
         debugShowCheckedModeBanner: false,
         home:
         Scaffold(
           appBar:
           AppBar(title: Text("Track Order",
           style: TextStyle(
             color: Colors.white,
           ),),
             backgroundColor: Colors.green,
             leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()
             {
               Navigator.push(context, MaterialPageRoute(builder: (context) => BottomMenu()));
             }),

           ),
           // bottomSheet: BottomMenu(),

           body:
           Column(
             children: [
               Expanded(child:
               SingleChildScrollView(
                 child:
                 Column(
                   children: [

                     //order status
                     Container(
                       margin: EdgeInsets.only(top: 30),
                       child: Row(
                         children: [

                           //confirm
                           Expanded(child: Container(
                             alignment: Alignment.center,
                             child: Text("Confirm",
                             style: TextStyle(
                               color: Colors.green
                             ),),
                           )),


                           //on the way
                           Expanded(child: Container(
                             alignment: Alignment.center,

                             child: Text("On The Way",
                               style: TextStyle(
                                   color: Colors.grey
                               ),),
                           )),


                           //delivered
                           Expanded(child: Container(
                             alignment: Alignment.center,

                             child: Text("Delivered",
                               style: TextStyle(
                                   color: Colors.grey
                               ),),
                           ))
                         ],
                       ),
                     ),


                     //order status no
                     Container(
                       margin: EdgeInsets.only(top: 20),
                       alignment: Alignment.center,
                       child: Stack(
                         children: [

                           //divider between no
                           Container(
                             margin: EdgeInsets.only(top: 10),
                             child: Divider(
                               indent: 70,
                               endIndent: 60,
                               color: Colors.black,
                               thickness: 1,
                             ),
                           )
                           ,

                           //row of no
                           Row(
                             children: [

                               // circle no 1
                               Expanded(
                                 child: Container(
                                   alignment: Alignment.topCenter,

                                   child: CircleAvatar(
                                     backgroundColor: Colors.green,
                                     radius: 20,
                                     child: Text("1",
                                       style: TextStyle(
                                           color: Colors.white
                                       ),),
                                   ),
                                 ),
                               ),

                               //circle no 2
                               Expanded(
                                 child: Container(
                                   alignment: Alignment.topCenter,

                                   child: CircleAvatar(
                                     backgroundColor: Colors.grey,
                                     radius: 20,
                                     child: Text("2",
                                       style: TextStyle(
                                           color: Colors.white
                                       ),),
                                   ),
                                 ),
                               ),

                               //circle no 3
                               Expanded(
                                 child: Container(

                                   child: CircleAvatar(
                                     backgroundColor: Colors.grey,

                                     radius: 20,
                                     child: Text("3",
                                       style: TextStyle(
                                           color: Colors.white
                                       ),),
                                   ),
                                 ),
                               ),

                             ],
                           ),





                         ],
                       ),
                     ),

                     // divider after order status
                     Container(
                       margin: EdgeInsets.only(top: 20),
                       child: Divider(
                         thickness: 10,
                         color: Colors.grey[400],
                       ),
                     ),

                     //order no
                     Container(
                       margin: EdgeInsets.fromLTRB(20, 30, 20, 5),
                       child: Row(
                         children: [

                           //text order no
                           Container(
                             margin: EdgeInsets.only(left: 20),
                             child: Text("Order No :",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 12
                             ),),
                           ),

                           //order no
                           Expanded(
                             child: Container(
                               margin: EdgeInsets.only(left: 20),
                               child: Text("45454545454545",
                                 style: TextStyle(
                                     fontSize: 12
                                 ),),
                             ),
                           ),
                         ],
                       ),
                     ),

                     //divider after order no
                     Divider(
                       indent: 30,
                       endIndent: 30,
                       thickness: 1,
                       color: Colors.grey,
                     ),


                     //delivery date
                     Container(
                       margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                       child: Row(
                         children: [
                           //text delivery
                           Container(
                             margin: EdgeInsets.only(left: 20),
                             child: Text("Delivery :",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 12
                               ),),
                           ),

                           //delivery date
                           Expanded(
                             child: Container(
                               margin: EdgeInsets.only(left: 30),
                               child: Text("2020-09-10",
                                 style: TextStyle(
                                     fontSize: 12
                                 ),),
                             ),
                           ),
                         ],
                       ),
                     ),

                     //divider after Delivery date
                     Divider(
                       indent: 30,
                       endIndent: 30,
                       thickness: 1,
                       color: Colors.grey,
                     ),

                     //time slot
                     Container(
                       margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                       child: Row(
                         children: [

                           //text time slot
                           Container(
                             margin: EdgeInsets.only(left: 20),
                             child: Text("Time Slot :",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 12
                               ),),
                           ),

                           //time slot
                           Expanded(
                             child: Container(
                               margin: EdgeInsets.only(left: 20),
                               child: Text("01:00 PM-03:00 PM (12:45)(1000)",
                                 maxLines: 1,
                                 style: TextStyle(
                                     fontSize: 12
                                 ),),
                             ),
                           ),
                         ],
                       ),
                     ),

                     //divider after time slot
                     Divider(
                       indent: 30,
                       endIndent: 30,
                       thickness: 1,
                       color: Colors.grey,
                     ),


                     //address
                     Container(
                       margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                       child: Row(
                         children: [
                           //text address
                           Container(
                             margin: EdgeInsets.only(left: 20),
                             child: Text("Address :",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 12
                               ),),
                           ),

                           //address
                           Expanded(
                             child: Container(
                               alignment: Alignment.center,
                               margin: EdgeInsets.only(left: 30),
                               child: Text("$Address",
                                 maxLines: 3,
                                 style: TextStyle(
                                     fontSize: 12
                                 ),),
                             ),
                           ),
                         ],
                       ),
                     ),

                     //date and total
                     Container(
                       margin: EdgeInsets.only(top: 30),
                       padding: EdgeInsets.all(10),
                       color: Colors.deepPurple,
                       child: Row(
                         children: [

                           //date
                           Expanded(child: Container(
                             child: Text("Date : $Date",
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                             ),),
                           )),

                           //total
                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("Total : $Total",
                               style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold
                               ),),
                           ))
                         ],
                       ),
                     ),


                     //items details heading
                     Container(
                       padding: EdgeInsets.all(10),
                       child: Row(
                         children: [

                           //items
                           Expanded(child:
                           Container(
                             child: Text("Items",
                             style: TextStyle(
                               fontWeight: FontWeight.bold
                             ),),

                           )),

                           //mts
                           Container(
                             alignment: Alignment.center,
                             width: 60,
                             child: Text("Mts",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold
                               ),),

                           ),

                           //qty
                           Container(
                             alignment: Alignment.center,
                             width: 50,

                             child: Text("Qty",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold
                               ),),

                           ),

                           //prices
                           Container(
                             alignment: Alignment.topRight,
                             width: 60,

                             child: Text("Prices",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold
                               ),),

                           )
                         ],
                       ),
                     ),

                     //divider after item heading
                     Divider(
                       thickness: 1,
                       color: Colors.grey,
                     ),

                     //list of items
                     SizedBox(
                       height: 300,

                         child: Container(
                           margin: EdgeInsets.only(bottom: 10),
                           child: ListView.builder(
                             physics: NeverScrollableScrollPhysics(),
                             // scrollDirection: Axis.vertical,
                               itemCount: 10,
                               itemBuilder: (BuildContext context, int position){
                             return
                                 ItemDetails();
                           }
                           ),
                         ),
                     ),

                     //divider after item list
                     Divider(
                       thickness: 1,
                       color: Colors.black,
                     ),

                     //item total
                     Container(
                       margin: EdgeInsets.only(top: 10),
                       padding: EdgeInsets.all(5),
                       child: Row(
                         children: [
                           Expanded(child: Text("Item Total"),),

                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("1550 Riyal"),)),

                         ],
                       ),
                     ),


                     //tax
                     Container(
                       padding: EdgeInsets.all(5),
                       child: Row(
                         children: [
                           Expanded(child: Text("Tax"),),

                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("100 Riyal"),)),

                         ],
                       ),
                     ),

                     //delivery charges
                     Container(
                       padding: EdgeInsets.all(5),
                       child: Row(
                         children: [
                           Expanded(child: Text("Delivery Charges"),),

                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("100 Riyal"),)),

                         ],
                       ),
                     ),

                     //discount
                     Container(
                       padding: EdgeInsets.all(5),
                       child: Row(
                         children: [
                           Expanded(child: Text("Discount"),),

                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("100 Riyal"),)),

                         ],
                       ),
                     ),

                     //admin discount
                     Container(
                       padding: EdgeInsets.all(5),
                       child: Row(
                         children: [
                           Expanded(child: Text("Admin Discount"),),

                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("100 Riyal"),)),

                         ],
                       ),
                     ),

                     //Final total amount
                     Container(
                       margin: EdgeInsets.only(bottom: 10),
                       padding: EdgeInsets.all(5),
                       child: Row(
                         children: [
                           Expanded(child: Text("Final Total Amount"),),

                           Expanded(child: Container(
                             alignment: Alignment.topRight,
                             child: Text("1700 Riyal"),)),

                         ],
                       ),
                     )


                   ],

                 ),
               )),


               //buttons
               Row(
                 children: [

                   //button need help
                   Expanded(
                     child: Container(
                       margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                       height: 50,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         shape: BoxShape.rectangle,
                         color: Colors.green,

                         borderRadius: BorderRadius.all(Radius.circular(5)),
                       ),
                       child: Text("NEED HELP?",
                       style: TextStyle(
                         color: Colors.white
                       ),),
                     ),
                   ),

                   //button cancel order
                   Expanded(
                     child: Container(
                       margin: EdgeInsets.fromLTRB(10, 5, 10, 10),

                       height: 50,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         shape: BoxShape.rectangle,
                         color: Colors.deepPurple,

                         borderRadius: BorderRadius.all(Radius.circular(5)),
                       ),
                       child: Text("CANCEL ORDER",
                         style: TextStyle(
                             color: Colors.white
                         ),),
                     ),
                   )
                 ],
               )
             ],
           ),
         ),
       );

  }

}