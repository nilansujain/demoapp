import 'package:demo_app/ui/otp/Otp.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_app/ui/Login.dart';
//import 'package:flutter_app/ui/Otp.dart';


class validation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.amberAccent,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Username"
                    
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),

            TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: "password"
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: FlatButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Otp()),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ),



            FlatButton(onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => validation()),
              );

            },
              child: Text("Login",
                style: TextStyle(
                  fontSize: 20,color: Colors.white,),
              ),
              color: Colors.amberAccent,
            ),

        Spacer(),

     ],
        ),
    )

        );


  }
}