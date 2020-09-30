import 'package:demo_app/demo/demo_page.dart';
import 'package:demo_app/ui/menu/bottom_menu.dart';
import 'package:demo_app/ui/productdetail/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget
{
  category createState() => category();
}

class category extends State<Category>
{
  @override
  Widget build(BuildContext context) {

    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(title: Text("Zedcart",
              style: TextStyle(
                  color: Colors.white
              ),),
              backgroundColor: Colors.green,
              leading: FlatButton(
                onPressed: ()
                {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,
                  color: Colors.white,),
              ),),

            body:
            Column(
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10.0),
                  alignment: Alignment.center,
                  color: Colors.deepPurple[500],
                  child: Text("SHOP BY CATEGORY",
                  style: TextStyle(
                    color: Colors.white
                  ),),

                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                      itemBuilder: (BuildContext context,int postion)
                  {
                    return


                    FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
                      },
                      child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Image.asset("assets/images/pro_img.png"),
                                ),
                                Expanded(child:Container(
                                  margin: EdgeInsets.only(left: 15.0),
                                  child: Text("Home and Kitchen"),
                                ) )
                              ],
                            ),
                          ),
                    );

                  }),
                )




              ],
            ),
          )
        );
  }


}