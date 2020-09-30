import 'package:demo_app/ui/menu/bottom_menu.dart';
import 'package:demo_app/ui/location/choose_adress.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

// submit()
// {
//   print("otp submitted");
//   Fluttertoast.showToast(
//       msg: "Submitted",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0
//   );
// }



class Otp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body:otp(),

      ),
    );
  }

}

class otp extends StatefulWidget
{
  _otp createState()
  {
    return _otp();
  }
}

class _otp extends State<otp>
{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return


      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only( bottom: 15),
          width: double.infinity,

          child: Column(
            children: <Widget>[

              //top part
              Stack(
                alignment: Alignment.topCenter,

                children: <Widget>[


                  Image.asset("assets/images/banner_login_otp.png",),




                  Container(
                    height:100,
                    width: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 70),
                    child: Image.asset("assets/images/logo.png",

                    ),
                  ),

                ],
              ),

              SizedBox(height: 30,),

              //resend otp
              Container(
                margin: EdgeInsets.only(left: 25,right: 25, top: 30, bottom: 30),
                child: Row(
                  children: <Widget>[

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("+91 4545454545",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),),
                    ),

                    Spacer(),

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Resend OTP",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                        ),),
                    ),

                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.all(20),
                alignment:Alignment.center,
                color: Colors.green,
                child: Text("4 Digit OTP sent to above mobile number",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14
                ),),
              ),

              Container(
                width: double.infinity,
                alignment:Alignment.center,
                height: 30,
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                color: Colors.green,
                child: Text("Verify Your Mobile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                  ),),
              ),

              Container(
                alignment:Alignment.center,
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                color: Colors.green,
                child: Text("Enter your OTP number here",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                  ),),
              ),


              Container(
                margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child:
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: PinEntryTextField(
                  showFieldAsBox: true,
                  onSubmit: (String pin){
//                    showDialog(
//                        context: context,
//                        builder: (context){
//                          return AlertDialog(
//                            title: Text("Pin"),
//                            content: Text('Pin entered is $pin'),
//                          );
//                        };
//                    ); //end showDialog()

                  }, // end onSubmit
                ),
              ),
              ),

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
                      // submit();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseAddress()),
                        );
//                    Navigator.pushNamed(context, "/ui/chooseaddress");


                    },

                    child:


                    Text("SUBMIT",

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,


                      ),
                    ),


                  ),
                ),
              ),

            ],
          ),
        ),
      );

  }

}