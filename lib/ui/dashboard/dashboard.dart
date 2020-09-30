import 'package:demo_app/demo/demo_gridview.dart';
import 'package:demo_app/demo/demo_page.dart';
import 'package:demo_app/ui/items/item_category_data.dart';
import 'package:demo_app/ui/productdetail/product_list.dart';
import 'package:demo_app/ui/viewpager/item_pageview.dart';
import 'package:demo_app/ui/items/item_similar_product.dart';
import 'package:demo_app/ui/offers/Offers.dart';
import 'package:demo_app/ui/searchbar/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  _dashboard createState() => _dashboard();
}

class _dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search field

        Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          height: 50.0,
          color: Colors.green,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Searchbar()));
              },
              child: TextField(
                enabled: false,
                enableSuggestions: true,
                autocorrect: true,
                maxLines: 1,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search for Product",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
              ),
            ),
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //divider between searh and view page
                Divider(
                  thickness: 4,
                  color: Colors.grey[300],
                ),

                //view pager
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ItemPageView(),
                ),

                //divider between  view page and item grid view
                Divider(
                  thickness: 4,
                  color: Colors.grey[400],
                ),

                // item grid view

                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      // mainAxisSpacing: 10.0,
                      crossAxisSpacing: 20.0,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        child: ItemCategoryData(),
                      );
                    },
                  ),
                ),

                // divider between item product and today saver
                Divider(
                  thickness: 4,
                  color: Colors.grey[300],
                ),

                //text today saver
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5, bottom: 10),
                              child: Text("Today Saver"))),
                      Container(
                          margin: EdgeInsets.all(5),
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.green),
                          ),
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Offers()));
                              },
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12),
                              )))
                    ],
                  ),
                ),

                // list item of today saver
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int position) {
                        return ItemSimilarProduct();
                      }),
                ),

                Divider(
                  thickness: 6,
                  color: Colors.grey[300],
                ),

                //favorites
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5, bottom: 10),
                              child: Text("Favorites"))),
                      Container(
                          margin: EdgeInsets.all(5),
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.green),
                          ),
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductList()));
                              },
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12),
                              )))
                    ],
                  ),
                ),

                // list \
                // item of favorites
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int position) {
                        return ItemSimilarProduct();
                      }),
                ),

                //divide
                Divider(
                  thickness: 6,
                  color: Colors.grey[300],
                ),

                //pageview

                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10.0),
                  width: double.infinity,
                  child: ItemPageView(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
