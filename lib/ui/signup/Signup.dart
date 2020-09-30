import 'package:demo_app/demo/login_demo.dart';
import 'package:demo_app/ui/login/login.dart';
import 'package:demo_app/ui/otp/Otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';



class Signup extends StatefulWidget
{
  signin createState() {
    return signin();
  }
}

class signin extends State<Signup>
{
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  String email;
  String name;
  String phone;
  String pass;
  String confirmpass;
  bool _autoValidate = false;

  Country _selected;


  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
          return
            MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(title: Text("Zedcart"),
              leading:
               IconButton(icon: const Icon(Icons.arrow_back),
              onPressed: () {
              Navigator.pop(context);

              }),



                backgroundColor: Colors.green,
                ),
          body: Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,

              child:
              CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate(
                        [
                          Form(
                              key: _formKey,
                              autovalidate: _autoValidate,

                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(40.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[


                                    //Name
                                    TextFormField(
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: "Name"

                                      ),
                                      validator: validatename,
                                      onSaved: (String value) {
                                        name = value; {
                                         if (value.isEmpty) {
                                           return 'Please enter some text';
                                          }
                                        };
                                        return null;
                                      },
                                    ),

                                    SizedBox(height: 10,),

//                                TextFormField(
//                                  maxLines: 1,
//                                  keyboardType: TextInputType.number,
//                                  decoration: InputDecoration(
//                                      hintText: "Mobile no"
//                                  ),
//                                  validator: validatephone,
//                                  onSaved: (String value) {
//                                    phone = value;
//                                    {
//                                          if (value.isEmpty) {
//                                            return 'Please enter some text';
//                                          }
//                                    };
//                                    return null;
//                                  },
//                                ),

                                    SizedBox(height: 10,),

//                              Username
                                    TextFormField(
                                      maxLines: 1,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                          hintText: "Username"
                                      ),
                                      validator:validatoremail,
                                      onSaved: (String value) {
                                        email = value;
                                        {
                                            if (value.isEmpty) {
                                              return 'Please enter some text';
                                             }
                                        };
                                        return null;
                                      },
                                    ),

                                    SizedBox(height: 10,),

//                                TextFormField(
//                                  maxLines: 1,
//                                  obscureText: true,
//
//                                  decoration: InputDecoration(
//                                      hintText: "Password"
//                                  ),
//                                  validator: validatepass,
//                                  onSaved: (String value) {
//                                    pass = value; {
////                    if (value.isEmpty) {
////                    return 'Please enter some text';
////                    }
//                                    };
//                                    return null;
//                                  },
//                                ),


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
                                          //
                                          //   cursorColor: Colors.green,
                                          //   keyboardType: TextInputType.number,
                                          //   decoration: InputDecoration(
                                          //     hintText: "+91",
                                          //
                                          //
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
                                            // height: 100,
                                            width: 200,
                                            child: TextFormField(

                                              maxLength: 10,
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

                                    SizedBox(height: 10,),

                                  //Referall code
                                    TextFormField(
                                      maxLines: 1,
                                      obscureText: true,

                                      decoration: InputDecoration(
                                          hintText: "Referral Code"
                                      ),
//                                  validator: validatecnfrmpass,
//                                  onSaved: (String value) {
//                                    confirmpass = value;
//                                    {
//                                      if (value.isEmpty) {
//                                        return 'Please enter some text';
//                                      }
//                                    };
//                                    return null;
//                                  },
                                    ),


                                    SizedBox(height: 10,),

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
//                                        Navigator.push(
//                                          context,
//                                          MaterialPageRoute(
//                                              builder: (context) => Otp()),
//                                        );
                                          Navigator.pushNamed(context, "/ui/otp");
                                          }

                                          },

                                          child:

                                          Text("Signup",

                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,


                                            ),
                                          ),


                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10,),

                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(top: 10),
                                        width: double.infinity,
                                        child:
                                        Text("By Creating an Account You Agree to The Terms of Use And Privacy Policy",
                                        ),
                                      )




//                    FlatButton(onPressed: ()
//                    {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => Otp()),
//                      );
//
//                    },
//                      child: Text("Signup",
//                        style: TextStyle(
//                          fontSize: 20,color: Colors.white,),
//                      ),
//                      color: Colors.amberAccent,
//                    ),
//
//                    Spacer(),

                                        ]
                                    ),

                  ),
              ),

                ],
                                ),
                              )

                        ],
              ),
                        ),
        ),
      );


  }

  String validatename(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validatoremail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;

  }

  String validatephone(String value) {
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  String validatepass(String value) {
    if(value.length <3)
    {
      return "Password must be greater then 3 digit";
    }
    return null;
  }

  String validatecnfrmpass(String value) {
    if(value.length<3 || pass !=confirmpass)
    {
      return "Password mismatch";

    }
    return null;
  }
}


