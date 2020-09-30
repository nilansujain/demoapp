import 'package:flutter/cupertino.dart';

class ItemDetails extends StatefulWidget
{
  _ItemDetails createState() => _ItemDetails();
}

class _ItemDetails extends State<ItemDetails>
{
  String Items = "abcdefgh";
  String Mts = "1 Piece";
  int Qty = 19;
  double Prices = 10.01;
  @override
  Widget build(BuildContext context) {

    return
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [

            //items
            Expanded(child:
            Container(
              margin: EdgeInsets.only(right: 5),
              child: Text("$Items",
                ),

            )),

            //mts
            Container(
              width: 60,
              child: Text("$Mts",
                ),

            ),

            //qty
            Container(
              alignment: Alignment.center,
              width: 50,

              child: Text("$Qty",
                ),

            ),

            //prices
            Container(
              alignment: Alignment.topRight,
              width: 60,

              child: Text("$Prices",
                ),

            )
          ],
        ),
      );

  }

}