
import 'dart:ffi';

import 'package:demo_app/demo/demo_page.dart';
import 'package:demo_app/demo/demo_pageview.dart';
import 'package:demo_app/ui/cart/MyCart.dart';
import 'package:demo_app/ui/viewpager/item_pageview.dart';
import 'package:demo_app/ui/items/item_productlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget
{
  _offer createState() => _offer();
}

class _offer extends State<Offers>
{
  @override
  Widget build(BuildContext context) {

    return
        Scaffold(
          appBar: AppBar(
            title: Text("Offers",
            style: TextStyle(
              color: Colors.white
            ),),
            leading: FlatButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Icon(Icons.arrow_back_ios,
            color: Colors.white,)),
            backgroundColor: Colors.green,

            actions: [
              IconButton(icon: Icon(Icons.add_shopping_cart,
              color: Colors.white,), onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
              })
            ],

            // bottom:
            // ListView.builder(itemBuilder: (BuildContext context, int position)
            // {
            //   return null;
            // }),
          ),

          body:
          Column(
            children: [

              //view pager
              Container(
                height: 200,
                width: double.infinity,
              child:  PageView.builder(
                    itemBuilder: (BuildContext context , int position)
                {
                  return
                      ItemPageView();

                }),
              ),


                   //category list view
                   Container(
                     padding: EdgeInsets.all(5.0),
                      color: Colors.green,

                      child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int position){
                          return

                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              ),
                              margin: EdgeInsets.all(5.0),
                              padding: EdgeInsets.all(5.0),
                              child:
                              FlatButton(
                                  onPressed: ()
                                  {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => demopage()));
                                    null;
                                  },
                                  child: Text("Category")),
                            );

                        }),
                      ),
                    ),




              // text no data avalible
              
              Opacity(
                opacity: 0.0,
                child:  Container(
                  alignment: Alignment.center,
                  child: Text("no offer"),
                )
              ),


              // offer items
                               Expanded(
                                       child: ListView.builder(
                                            scrollDirection: Axis.vertical,
                                              itemBuilder: (BuildContext context, int position)
                                                {
                                                  return

                                                    ItemProductList();


                                                }


                                     ),
                                   ),













            ],
          ),


        );
  }

}