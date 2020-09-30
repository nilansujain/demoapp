import 'package:demo_app/ui/productdetail/productdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemProductList extends StatefulWidget {
  itemProductList createState() => itemProductList();
}

class itemProductList extends State<ItemProductList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              // product  image and offer image
              Container(
                alignment: Alignment.topCenter,
                // margin: EdgeInsets.only(left: 10.0),
                child: FlatButton(
                  highlightColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails()));
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/pro_img.png",
                        height: 80,
                        width: 80,
                      ),
                      Image.asset(
                        "assets/images/offer_image.png",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),

              // product name , descripton and product type
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Text(
                          "product name",
                          maxLines: 3,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "description",
                        style: TextStyle(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Product type",
                                style: TextStyle(),
                              ),
                            ),
                            Icon(
                              Icons.star_border,
                              size: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //price cross price and add buttomn
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "234",
                          maxLines: 3,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "456",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: FlatButton(
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 70,
                                  alignment: Alignment.center,
                                  color: Colors.green,
                                  child: Text(
                                    "Add",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Container(
                                    height: 30.0,
                                    width: 30,
                                    color: Colors.purple,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
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
