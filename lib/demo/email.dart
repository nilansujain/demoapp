import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class email extends StatefulWidget
{
  email({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<email>
{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String email;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text("email"),
       backgroundColor: Colors.amberAccent,),
       body: new SingleChildScrollView(
         child: new Container(
           margin: new EdgeInsets.all(15.0),
           child: new Form(
             key: _formKey,
             autovalidate: _autoValidate,
             child: FormUI(),
           ),
         ),
       ),
     ),
   );
  }



Widget FormUI()
{
  return new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new TextFormField(
        decoration: const InputDecoration(labelText: 'Email'),
        keyboardType: TextInputType.emailAddress,
        validator: validateEmail,
        onSaved: (String val) {
          email = val;
        },
      ),
      new SizedBox(
        height: 10.0,
      ),
      new RaisedButton(
        onPressed: _validateInputs,
        child: new Text('Validate'),
      )
    ],
  );
}


void _validateInputs() {
  if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
    _formKey.currentState.save();
  } else {
//    If all data are not valid then start auto validation.
    setState(() {
      _autoValidate = true;
    });
  }
}

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }
}