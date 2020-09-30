
import 'package:demo_app/ui/address/select_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogLocation extends StatefulWidget
{
  _DialogLocation createState() => _DialogLocation();
}

class _DialogLocation extends State<DialogLocation>
{
  @override
  Widget build(BuildContext context) {

    return
        Dialog(
          backgroundColor: Colors.white,
          elevation: 10.0,
          child: Scaffold(
            body: Container(
              alignment: Alignment.center,
              height: 400,
              width: 600,
              child:
              Card(
                margin: EdgeInsets.all(40.0),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [

                          Expanded(child: Text("Save the Location As:")),

                          Container(
                            height: 50,
                              width: 50,
                              child: FlatButton(child: Image.asset("assets/images/close_circle.png"),
                              onPressed: ()
                                {
//                                Navigator.pop(context);
                                Navigator.of(context).pop();

                              },
                              )),
                        ],
                      ),

                      Divider(
                        color: Colors.black,
                        height: 10.0,
                        thickness: 2,
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          minLines: 1,
                          maxLines: 2,
                          decoration: InputDecoration(
                            hintText: "14, shyam vihar, pratap nagar , sanganer, jaipur, rajasthan",
//
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              )
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                              hintText: "Home, office etc.",
//
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              )
                          ),
                        ),
                      ),




                      Container(
                        width: double.infinity,
                        color: Colors.green,
                        margin: EdgeInsets.only(top: 20),
                        child: FlatButton(
                          onPressed: ()
                          {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectAddress()));
                          },
                          child: Text('SAVE',
                          style:
                            TextStyle(
                              color: Colors.white
                            ),),
                        ),

                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );

  }

}