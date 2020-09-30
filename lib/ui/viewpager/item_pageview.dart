import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPageView extends StatefulWidget
{
  itempageview createState() => itempageview();
}

class itempageview extends State<ItemPageView>
{
  @override
  Widget build(BuildContext context) {

    return
       Column(
          children: [
            Container(
              height:200,
              width: double.infinity,
              child: PageView.builder(
                itemBuilder: (BuildContext context, int position)
                {
                  return
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          alignment: Alignment.center,
                          child: Image.asset(position %2 ==0 ? "assets/images/logo.png":"assets/images/pro_img.png",
                            height: 150,
                            width: 150,
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