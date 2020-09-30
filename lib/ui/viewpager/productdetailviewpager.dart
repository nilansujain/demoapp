import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductViewPager extends StatefulWidget
{
  _ProductViewPager createState() => _ProductViewPager();
}

class _ProductViewPager extends State<ProductViewPager>
{

  int count = 6;
  @override
  Widget build(BuildContext context) {

    return
       Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child:

              PageView.builder(
                itemCount: count ,
                itemBuilder: (BuildContext context, int position)
                {
                  return
                    Column(
                      children: [
                        Container
                          (

                          padding: EdgeInsets.all(10.0),
                          alignment: Alignment.center,
                          child: Image.asset(position %2 ==0 ? "assets/images/logo.png":"assets/images/pro_img.png",
                            // height: double.negativeInfinity,
                            // width: double. infinity,
                            // fit: BoxFit.fitHeight,

                            ),
                        ),
                        ],
                    );
                },
              ),
            ),




          ],
        );

  }

}