import 'package:demo_app/demo/validation.dart';
import 'package:demo_app/ui/otp/Otp.dart';
import 'package:demo_app/ui/signup/Signup.dart';
import 'package:demo_app/validation.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';


// toast(msg)
// {
//   print(msg);
//   Fluttertoast.showToast(
//       msg: "Login",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0
//   );
// }

class login_demo extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: demo_login(),
      ),
    );
  }}



 class demo_login extends StatefulWidget {

loginmain createState()
{
  return loginmain();
}
 }

class loginmain extends State<demo_login> {
  var login = "login Clicked";
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  var phone;
  var phone_code;

  Country _selected;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
        SingleChildScrollView(

          child: Container(
//            margin: EdgeInsets.only(top: 30, bottom: 15),
            width: double.infinity,
            child:
                //screen
            Column(
              children: <Widget>[
                
                // top image and logo
                Stack(
                  alignment: Alignment.topCenter,

                  children: <Widget>[
                    

                       Image.asset("assets/images/banner_login_otp.png",),
                   

                       

                       Container(
                         height:100,
                         width: 100,
                         margin: EdgeInsets.only(top: 80),
                         child: Image.asset("assets/images/logo.png",
                           alignment: Alignment.center,

                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 40),
                         child: Text("LOGIN",
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),

                     ],
                   ),

                SizedBox(height: 30,),



                //HELLO TEXT
                Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.centerLeft,
                  child:
                  Text("HELLO",
                  style:
                    TextStyle(
                      color: Colors.grey,
                      fontSize: 24,

                    ),),
                ),

                SizedBox(height: 8,),

                //ENTER YOUR PHONE TEXT
                Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.centerLeft,

                  child:
                  Text("Please Enter Your Mobile No",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                    ),
                  ),
                ),





               //  center part



                    Form(
                        key: _formKey,
                        autovalidate: _autoValidate,

                      child:
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center ,
//                                crossAxisAlignment: CrossAxisAlignment.center,

                                    children: <Widget>[

                                            Container(
                                              margin: EdgeInsets.all(10),
                                              width: 100,
                                              // height: 100,

                                              child:

                                              CountryPicker(
                                                dense: false,
                                                showFlag: true,  //displays flag, true by default
                                                showDialingCode: true, //displays dialing code, false by default
                                                showName: false, //displays country name, true by default
                                                showCurrency: false, //eg. 'British pound'
                                                showCurrencyISO: false, //eg. 'GBP'
                                                onChanged: (Country country) {
                                                  setState(() {
                                                    _selected = country;
                                                  });
                                                },
                                                selectedCountry: _selected,
                                              ),

                                              // TextFormField(
                                              //   cursorColor: Colors.green,
                                              //   keyboardType: TextInputType.number,
                                              //   decoration: InputDecoration(
                                              //     hintText: "+91",
                                              //   ),
                                              //
                                              //
                                              //   validator: (String value) {
                                              //     phone_code = value;
                                              //     {
                                              //       if (value.isEmpty) {
                                              //         return 'Code';
                                              //       }
                                              //     };
                                              //     return null;
                                              //   },
                                              //
                                              // ),
                                            ),






                       Expanded(

                         child: Container(
                           height: 100,
                                      width: 200,
                                      child: TextFormField(

                                        maxLength: 12,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: "Phone Number",

                                        ),


                                        validator: validatephone,
                                          onSaved: (String value) {
                                          phone = value;
                                          {
                                            if (value.isEmpty) {
                                              return 'Please Enter Number';
                                            }
                                          };
                                          return null;
                                        },
//                              ),
                                ),
                                    ),
                                  ),

                                    ],
                    ),


//                              login button
                              Container(

                                alignment: Alignment.center,

//                        padding: EdgeInsets.all(30),
                                margin: EdgeInsets.only(top: 80),

                                child:    ButtonTheme(
                                  minWidth: 300,
                                  height: 50,
                                  child: RaisedButton(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),

                                    onPressed: ()
                                    {
                                    if (_formKey.currentState.validate()) {
                                      // toast(login);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Otp()),
                                      );
                                    }

                                    },

                                    child:

                                    Text("LOGIN",

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,


                                      ),
                                    ),


                                  ),
                                ),
                              ),



//                              register
                              Container(

                                  alignment: Alignment.center,
                                  child: FlatButton(
//                                    onPressed: ()
//                                    {
//                                      Navigator.push(
//                                        context,
//                                        MaterialPageRoute(builder: (context) => Signup()),
//                                      );
//                                    },
                                    child: Text("Register",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),),

                                  )
                              )


                            ],
                          ),




                    ),
                  ],

            ),


        ),
    );

  }
  String validatephone(String value) {
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

}