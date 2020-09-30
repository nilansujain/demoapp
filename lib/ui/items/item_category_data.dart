import 'package:demo_app/ui/productdetail/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCategoryData extends StatefulWidget
{
  itemcategorydata createState() => itemcategorydata();
}

class itemcategorydata extends State<ItemCategoryData>
{
  @override
  Widget build(BuildContext context) {

    return
      Column(
            children: [
              FlatButton(
                highlightColor: Colors.white,
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
                },
                child: CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                    child: Image.asset("assets/images/cat_icon1.png"),

                ),
              ),

              Container(
                alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text("Home & Kitchen")),

            ],

        );
  }

}