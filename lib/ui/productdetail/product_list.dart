import 'package:demo_app/ui/cart/MyCart.dart';
import 'package:demo_app/ui/items/item_minimum_order_delivery.dart';
import 'package:demo_app/ui/items/item_productlist.dart';
import 'package:demo_app/ui/viewpager/item_pageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  _ProductList createState() => _ProductList();
}

class _ProductList extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Products",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: Column(
            children: [
              //viewpager
              Container(
                height: 200,
                width: double.infinity,
                child: ItemPageView(),
              ),

              //category and subcategory
              Container(
                padding: EdgeInsets.all(5.0),
                color: Colors.green,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int position) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              margin: EdgeInsets.all(5.0),
                              padding: EdgeInsets.all(5.0),
                              child: FlatButton(
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => demopage()));
                                    null;
                                  },
                                  child: Text("Category")),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int position) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              margin: EdgeInsets.all(5.0),
                              padding: EdgeInsets.all(5.0),
                              child: FlatButton(
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => demopage()));
                                    null;
                                  },
                                  child: Text("Sub Cat.")),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              //min order and delivery
              Container(
                margin: EdgeInsets.only(top: 5),
                child: MinimumOrder(),
              ),

              // text no data avalible
              Visibility(
                  maintainState: true,
                  visible: false,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("no offer"),
                  )),

              // List Of Products
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int position) {
                      return ItemProductList();
                    }),
              ),

              //bottom bar
              Container(
                height: 30,
                color: Colors.deepPurple,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCart()));
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(3),
                        child: Text(
                          "13 items",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        child: Text(
                          "1550 Riyal",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Click here to place order",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
