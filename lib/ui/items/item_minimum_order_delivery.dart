import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinimumOrder extends StatefulWidget
{
  _minimumorder createState() => _minimumorder();
}

class _minimumorder extends State<MinimumOrder>
{
  @override
  Widget build(BuildContext context) {

    return
        Container(
          child:
          Row(
            children: [

              Container(
                  margin: EdgeInsets.all(5.0),
                  child: Image.asset("assets/images/list_icon.png",
                    height: 15,
                    width: 15,)),

              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text("Minimun Order",
                    style: TextStyle(color: Colors.grey,
                        fontSize: 12),),
                ),
              ),

              Container(
                  margin: EdgeInsets.all(5.0),
                  child: Image.asset("assets/images/bike_icon.png"
                    ,height: 15,
                    width: 15,)),

              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text("Minimun Delivery Charges",
                    style: TextStyle(color: Colors.grey,
                        fontSize: 12),),
                ),
              ),

            ],
          ),

        );
  }

}
