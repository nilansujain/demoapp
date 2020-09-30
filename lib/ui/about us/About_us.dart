import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget
{
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs>
{
  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home:
          Scaffold(
            appBar: AppBar(title: Text("About Us",
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
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0
                  ),
                  alignment: Alignment.center,
                  child: Text("About Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,

                  ),),
                ),

                Expanded(child: Container(
                  alignment: Alignment.center,
                  child: Text("About The App"),
                )),

                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),

                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      FlatButton(onPressed: null, child: Image.asset("assets/images/ic_facebook.png",
                      height: 30,
                      width: 30,)),

                      FlatButton(onPressed: null, child: Image.asset("assets/images/ic_twitter.png",
                        height: 30,
                        width: 30,)),

                      FlatButton(onPressed: null, child: Image.asset("assets/images/ic_instagram.png",
                        height: 30,
                        width: 30,)),

                      FlatButton(onPressed: null, child: Image.asset("assets/images/ic_linkedin.png",
                        height: 30,
                        width: 30,)),



                    ],
                  ),
                )
              ],
            ),
          ),
        );
  }

}