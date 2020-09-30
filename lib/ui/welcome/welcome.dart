import 'package:demo_app/ui/viewpager/item_pageview.dart';
import 'package:demo_app/ui/viewpager/welcomepageview.dart';
import 'package:demo_app/ui/menu/bottom_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_indicator/page_indicator.dart';




class Welcome extends StatefulWidget
{
  _welcome createState() => _welcome();
}

class _welcome extends State<Welcome>
{
  final PageController controller = PageController(viewportFraction: 0.8);
  double count = 0;
  @override
  Widget build(BuildContext context) {

    return
        Scaffold(
          body:

          Column(
            children: [
              Expanded(
                child:

                PageIndicatorContainer(
                    child:

                    PageView(
                     children: <Widget>[

                       Expanded(child: WelcomePageView()),
                       // Welcome to awfr app text

                        ],
                        controller: controller,
                        ),




                        align: IndicatorAlign.bottom,
                        length: 6,
                        indicatorSpace: 20.0,
                        padding: const EdgeInsets.all(10),
                        indicatorColor: Colors.grey,
                        indicatorSelectorColor: Colors.green,
                        shape: IndicatorShape.circle(size: 8),







  ),
              ),


              Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                   ),
                    child: FlatButton(onPressed: ()
                      {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomMenu()));
                      }, child: Text("GET START",
                    style: TextStyle(
                    color: Colors.white
                    ),)),
                  )
            ],
          ));
  }

}
