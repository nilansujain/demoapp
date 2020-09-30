import 'package:demo_app/ui/items/item_similar_product.dart';
import 'package:demo_app/ui/viewpager/productdetailviewpager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class ProductDetails extends StatefulWidget
{
  _ProductDetails createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails>
{
  final PageController controller = PageController(viewportFraction: 0.8);


  @override
  Widget build(BuildContext context) {

    return
        MaterialApp(
          debugShowCheckedModeBanner: false ,
          home: Scaffold(
            appBar: AppBar(title: Text("Product Details",
            style: TextStyle(
              color: Colors.white
            ),),
            backgroundColor: Colors.green,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),
            onPressed: ()
              {
                Navigator.pop(context);
              },),),


            body: SingleChildScrollView(
              child:
              Column(
                children: [

                  //view pager with tab
                  SizedBox(
                    height: 300,
                    child: PageIndicatorContainer(
                      child:

                      PageView(
                        children: <Widget>[

                          Container(
                            child:
                            ProductViewPager(),

                          )
                    // Welcome to awfr app text

                        ],
                        controller: controller,
                      ),
                    //
                    //
                    //
                    //
                      align: IndicatorAlign.bottom,
                      length: 6,
                      indicatorSpace: 20.0,
                      padding: const EdgeInsets.all(10),
                      indicatorColor: Colors.grey,
                      indicatorSelectorColor: Colors.green,
                      shape: IndicatorShape.circle(size: 8),

                    ),
                  ),

                  //divider afetr view pager
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),

                  //text offer
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Text("Offer 18%",
                    style: TextStyle(
                      color: Colors.green,
                    ),),
                  ),

                  //product name
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    child: Text("PRoduct Name"),
                  ),

                  //product type
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.topLeft,
                    child: Text("PRoduct Type"),
                  ),


                  //price and button
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        //price
                        Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text("234",
                                    style: TextStyle(
                                      fontSize: 18
                                    ),
                                   ),
                                ),

                                //cross price
                                Container(
                                    margin: EdgeInsets.only(left: 20),

                                    child: Text("456",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                          decoration: TextDecoration.lineThrough

                                      ),)),

                              //button
                              Expanded(
                                child: Container(
                                      child: FlatButton(onPressed: null,
                                          child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 30.0,
                                                width: 70,
                                                alignment: Alignment.center,
                                                color: Colors.green,
                                                child: Text("Add",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),),
                                              ),
                                              Container(
                                                  height: 30.0,
                                                  width: 30,
                                                  color: Colors.purple,
                                                  child: Icon(Icons.add,color: Colors.white,))
                                            ],
                                          )),
                                    ),
                              ),


                      ],
                    ),
                  ),

                  //divider after price
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),


                  //product details
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child:
                    Row(
                      children: [
                        //text product details
                        Expanded(child: Text("Product Detail")),

                        //icon dropdown
                        Expanded(child: Container(
                          alignment: Alignment.topRight,
                          child: IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: null),)),


                      ],
                    ),
                  ),

                  //divider after product details
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),


                  //product description
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(5),
                    child: Text("Product Description"),
                  ),

                  //divider after product description
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),

                  //Similar products
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child:
                    Row(
                      children: [
                        Expanded(child:
                        Container(
                            margin: EdgeInsets.only(left: 5,
                                bottom: 10),
                            child: Text("Similar Products"))),

                        Container(
                            margin: EdgeInsets.all(5),
                            height:30,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color:  Colors.green),
                            ),
                            child: FlatButton(onPressed: null, child: Text("See All",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12
                              ),
                            ))
                        )



                      ],
                    ),
                  ),

                  // list item of favorites
                  SizedBox(
                    height: 300,
                    child:
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int position){
                          return

                            ItemSimilarProduct();
                        })
                    ,

                  ),



                ],
              ),
            ),
          ),
        );

  }

}