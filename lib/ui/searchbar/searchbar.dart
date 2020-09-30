import 'package:demo_app/helper/Appbar_helper.dart';
import 'package:demo_app/ui/cart/MyCart.dart';
import 'package:demo_app/ui/items/item_minimum_order_delivery.dart';
import 'package:demo_app/ui/items/item_side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget
{
  _searchbar createState() => _searchbar();
}

class _searchbar extends State<Searchbar>
{
  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home:

               Scaffold(

                 appBar: AppBar(
                   backgroundColor: Colors.green,

                 leading: IconButton(icon: Icon(Icons.arrow_back_ios,
                 color: Colors.white,), onPressed: ()
                 {
                   Navigator.pop(context);
                 }),

                 title: Container(
                   color: Colors.white,
                   child: TextField(
                     maxLines: 1,
                     decoration: InputDecoration(
                       fillColor: Colors.white,
                       prefixIcon: Icon(Icons.search,
                       color: Colors.grey,),
                       hintText: "Search Product",
                      


                     ),

                   ),
                 ),

                 actions: [
                   IconButton(icon: Icon(Icons.add_shopping_cart,
                   color: Colors.white,), onPressed: ()
                   {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                   })
                 ],),

                 body:
                 Container(
                   child:
                   MinimumOrder(),
                 ),

          ),
            );




  }

}