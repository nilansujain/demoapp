import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerService extends StatefulWidget
{
  _Customer createState() => _Customer();
}

class _Customer extends State<CustomerService>
{
  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home:
          Scaffold(
            appBar: AppBar(title: Text("Customer Service",
            style: TextStyle(
              color: Colors.white
            ),),
            backgroundColor: Colors.green,
            leading: FlatButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Icon(Icons.arrow_back_ios,
            color: Colors.white,)
            ),),

            body:
            Column(
              children: [
                Expanded(
                  child:
                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 40.0),
                        alignment: Alignment.center,
                        child: Text("Feel To Free Contact Us",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),),
                      ),


                      //call
                      Container(
                        alignment: Alignment.center,
                        color: Colors.green[500],
                       margin: EdgeInsets.all(20.0),
                        child: FlatButton(onPressed: (null),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child:
                            Row(
                              children: [
                                Expanded(child: Text("Call  9999999999",
                                style: TextStyle(
                                  color: Colors.white
                                ),)),

                                Image.asset("assets/images/ic_call_cc.png",height: 30, width: 20,)

                              ],
                            )
                        ),
                      ),

                      //whatsapp
                      Container(
                        alignment: Alignment.center,
                        color: Colors.green[500],
                        margin: EdgeInsets.all(20.0),
                        child: FlatButton(onPressed: (null),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child:
                            Row(
                              children: [
                                Expanded(child: Text("Whatsapp Message",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),)),

                                Image.asset("assets/images/ic_whatsapp_cc.png",height: 40, width: 30,
                                color: Colors.white,)

                              ],
                            )
                        ),
                      ),

                    ],
                  ),
                ),

                //bottom circles
                Row(
                  children: [

                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.green[500],
                        child: FlatButton(onPressed: null, child: Text("FAQ'S"
                        ,style: TextStyle(
                            color: Colors.white
                          ),)),

                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.green[500],
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: FlatButton(onPressed: null, child: Text("Terms & Conditions"
                            ,style: TextStyle(
                                color: Colors.white
                            ),)),
                        ),

                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.green[500],
                        child: Container(
                          padding: EdgeInsets.only(left: 15.0),
                          child: FlatButton(onPressed: null, child: Text("Privacy Policy"
                            ,style: TextStyle(
                                color: Colors.white
                            ),)),
                        ),

                      ),
                    ),


                  ],
                )
              ],
            ),
          ),
        );
  }

}