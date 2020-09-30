import 'package:demo_app/ui/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Colors.green,
          leading: FlatButton(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 30.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(
                      "assets/images/ic_dummyy.png",
                    ),
                  )
//                  FlatButton(onPressed: null, child: Image.asset("assets/images/ic_dummyy.png",
//                  height: 80,
//                  width: 80,)),
                  ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  enabled: true,
                  maxLines: 1,
                  decoration: InputDecoration(hintText: "Full Name"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  maxLines: 1,
                  decoration: InputDecoration(hintText: "Email"),
                ),
              ),
              Row(
                children: [
                  TextField(
                    enabled: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                        hintText: "${selectedDate.toLocal()}".split(' ')[0]),
                  ),
                  IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: _selectDate(context))
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  enabled: true,
                  maxLines: 1,
                  decoration: InputDecoration(hintText: "Mobile no"),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Container(
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.green[500],
                      margin: EdgeInsets.all(20.0),
                      child: Text(
                        "Update",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    Expanded(
                      child: Container(
                        height: 40.0,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        margin: EdgeInsets.all(20.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            "Logout",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
