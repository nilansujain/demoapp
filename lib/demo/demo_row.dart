import 'package:demo_app/ui/otp/Otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rows extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: row(),
      ),
    );
  }

}

class row extends StatefulWidget
{
  _row createState()
  {
    return _row();

  }
}

class _row extends State<row>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _formKey = GlobalKey<FormState>();
    bool _autoValidate = false;
    return
        Container(
          margin: EdgeInsets.only(top: 80),
          child:
          Row(
            children: <Widget>[


              Container(
                height: 100,
                width: 100,
                alignment: Alignment.topLeft,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "sample "
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  height: 100,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "sample "
                    ),
                  ),
                ),
              )
            ],
          ),
        );

  }

}