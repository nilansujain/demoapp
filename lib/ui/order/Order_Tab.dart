import 'package:demo_app/ui/cart/MyCart.dart';
import 'package:demo_app/ui/category/Category.dart';
import 'package:demo_app/ui/order/CurrentOrder.dart';
import 'package:demo_app/ui/order/PastOrder.dart';
import 'package:demo_app/ui/profile/edit_profile.dart';
import 'package:flutter/material.dart';


class Ordertab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                // Tab(icon: Icon(Icons.directions_car)),
                // Tab(icon: Icon(Icons.directions_transit)),
                // Tab(icon: Icon(Icons.directions_bike)),
                Tab(child: Text("CURRENT ORDER")),
                Tab(child: Text("PAST ORDER")),

              ],
            ),
            title: Text('Order History',
            style: TextStyle(
              color: Colors.white
            ),),
            leading: FlatButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Icon(Icons.arrow_back_ios,
            color: Colors.white,)),
            backgroundColor: Colors.green,
          ),
          body: TabBarView(
            children: [

             CurrentOrder(),
              CurrentOrder(),

            ],
          ),
        ),
      ),
    );
  }
}