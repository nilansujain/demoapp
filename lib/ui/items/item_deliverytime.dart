import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDeliveryTime extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    String text = "12:00 AM - 2:00 PM";
    return

        // FlatButton(
        //   onPressed: () {
        //     Container(
        //       padding: EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //           color: Colors.green,
        //           // border: Border.all(color: Colors.black, width: 1),
        //           borderRadius: BorderRadius.all(Radius.circular(5)),
        //         ),
        //         // alignment: Alignment.center,
        //         child: Text(text,
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             color: Colors.white
        //           ),),
        //
        //     );
        //   },
        //   child:

          Container(
            margin: EdgeInsets.all(5),
            // padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            alignment: Alignment.center,
            child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          );
        // );
  }

}