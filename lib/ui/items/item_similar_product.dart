import 'package:demo_app/ui/items/add_sub_product.dart';
import 'package:demo_app/ui/productdetail/productdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSimilarProduct extends StatefulWidget {
  itemsimilarproduct createState() => itemsimilarproduct();
}

class itemsimilarproduct extends State<ItemSimilarProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
      child: Column(
        children: [
          //ofeer box
          Container(
              width: 150,
              margin: EdgeInsets.only(left: 3.0, right: 3.0, top: 5),
              alignment: Alignment.center,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green[200],
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: Text(
                "Offer",
                maxLines: 1,
                style: TextStyle(color: Colors.white, fontSize: 12),
              )),

          // image
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductDetails()));
            },
            child: Container(
              // margin: EdgeInsets.only(top: 4),
              child: Image.asset(
                "assets/images/pro_img.png",
                height: 100,
                width: 100,
              ),
            ),
          ),
          //
          // //price
          Row(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 8),
                alignment: Alignment.topLeft,
                child: Text(
                  "500",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                alignment: Alignment.topRight,
                child: Text(
                  "300",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),

          //    //product name
          Container(
            width: 130,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 3, top: 5),
            child: Text(
              "Product Name",
              maxLines: 1,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),

          //    //product type
          Container(
            width: 130,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 3, left: 5),
            child: Text(
              "1.2 KG",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),

          //    //plus and minus of product
          Container(
            margin: EdgeInsets.only(top: 12),
            child: AddSubPro(),
          ),

          //    //button add
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 35,
                  margin: EdgeInsets.only(left: 3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text(
                    "ADD",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
                Container(
                  height: 35,
                  width: 35,
                  margin: EdgeInsets.only(right: 3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.purple),
                  child: IconButton(
                      icon: Image.asset("assets/images/ic_plush.png")),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
