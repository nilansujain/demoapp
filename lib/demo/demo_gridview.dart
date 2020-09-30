import 'package:demo_app/ui/items/item_category_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoGrid extends StatefulWidget
{
  demogrid createState() => demogrid();
}

class demogrid extends State<DemoGrid>
{
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body:
        Container(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 3 ,
            children: List.generate(50,(index){
              return Container(
                child:
                  ItemCategoryData(),
                );


            }),
          ),
        ),
      );

  }

}