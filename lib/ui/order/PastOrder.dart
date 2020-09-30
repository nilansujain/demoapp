import 'package:demo_app/ui/items/item_current_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PastOrder extends StatefulWidget
{
  _Pastorder createState() => _Pastorder();
}

class _Pastorder extends State<PastOrder>
{
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
      body: Column(
        children: [




          Expanded(child:
          ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int position){


                return
                  ItemCurrentOrder();
              }),
          ),

        ],
      ),
    );

  }

}