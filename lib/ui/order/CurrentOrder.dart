
import 'package:demo_app/ui/items/item_current_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentOrder extends StatefulWidget
{
  _Currentorder createState() => _Currentorder();
}

class _Currentorder extends State<CurrentOrder>
{
  @override
  Widget build(BuildContext context) {

    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
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
        ),

      );
  }

}