import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePageView extends StatefulWidget
{
  welcomepageview createState() => welcomepageview();
}

class welcomepageview extends State<WelcomePageView>
{

  int count = 6;
  @override
  Widget build(BuildContext context) {

    return
       Column(
          children: [
            Expanded(
              // height:200,
              // width: double.infinity,
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
                            height: 80,
                            width: 80,
                            // fit: BoxFit.fitHeight,

                            ),
                        ),
                        ],
                    );
                },
              ),
            ),


            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10, bottom: 40),
              child: Text("Welcome to ZADCART App",
                style: TextStyle(
                    color: Colors.green
                ),),
            ),

          ],
        );

  }

}