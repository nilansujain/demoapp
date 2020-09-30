import 'package:demo_app/ui/trackorder/trackorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCurrentOrder extends StatefulWidget
{
  _ItemCurrentOrder createState() => _ItemCurrentOrder();
}

class _ItemCurrentOrder extends State<ItemCurrentOrder>
{
  @override
  Widget build(BuildContext context) {

    return
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(child: Text("08-jan-2018",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)),

                Container(
                    height:30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color:  Colors.green),
                    ),
                    child: FlatButton(onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrackOrder()));
                        }, child: Text("Track Order",
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12
                      ),
                    ))
                )

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10.0),
            alignment: Alignment.topLeft,
            child: Text("Order id #SGJ34564S",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10.0),
            alignment: Alignment.topLeft,
            child: Text("Total:  1550 Riyal",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10.0),
            alignment: Alignment.topLeft,
            child: Text("Order Status",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
          ),

          Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],



      );

  }

}
