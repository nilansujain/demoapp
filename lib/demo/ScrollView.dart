import 'package:flutter/material.dart';

import '../ui/otp/Otp.dart';


class Scrollview extends StatelessWidget
{



@override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Scroll view demo"),
        backgroundColor: Colors.amberAccent,
        ),

      body:
      Container(
        child:
        CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
//
//                  Text("this is body"),

                Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      TextField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),


                    ],
                  ),
                )



//                  Container(
//
//                    height: double.infinity,
//                    width: double.infinity,
//
//                    margin: EdgeInsets.all(40),
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//
//
//                        //Name TextField
//                        TextField(
//                          maxLines: 1,
//                          textInputAction: TextInputAction.next,
//                          keyboardType: TextInputType.text,
//                          decoration: InputDecoration(
//                            hintText: 'Full Name',
//                            border: const OutlineInputBorder(),
//                          ),
//                        ),
//
//
//                        SizedBox(height: 10),
//
//                        //Mobile no TextField
//                        TextField(
//                          maxLines: 1,
//                          textInputAction: TextInputAction.next,
//
//                          keyboardType: TextInputType.number,
//                          maxLength: 10,
//                          decoration: InputDecoration(
//                            hintText: 'Mobile No.',
//                            border: const OutlineInputBorder(),
//                          ),
//                        ),
//
//
//                        SizedBox(height: 10),
//
//
//                        //Username TextField
//                        TextField(
//                          maxLines: 1,
//                          textInputAction: TextInputAction.next,
//
//                          keyboardType: TextInputType.emailAddress,
//                          decoration: InputDecoration(
//                            hintText: 'Username',
//                            border: const OutlineInputBorder(),
//                          ),
//                        ),
//
//
//                        SizedBox(height: 10),
//
//
//                        //Password Textfield
//                        TextField(
//                          maxLines: 1,
//                          textInputAction: TextInputAction.next,
//
//                          keyboardType: TextInputType.visiblePassword,
//                          decoration: InputDecoration(
//                            hintText: 'Password',
//                            border: const OutlineInputBorder(),
//                          ),
//                        ),
//
//                        SizedBox(height: 10),
//
//                        //Confirm Password Textfield
//                        TextField(
//                          maxLines: 1,
//                          textInputAction: TextInputAction.done,
//
//                          keyboardType: TextInputType.visiblePassword,
//                          decoration: InputDecoration(
//                            hintText: 'Confirm Password',
//                            border: const OutlineInputBorder(),
//                          ),
//                        ),
//
//                        SizedBox(height: 10),
//
//                        //Button Row
//
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: <Widget>[
//
//                            //Login Button
//                            FlatButton(onPressed:()
//
//                            {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => Otp()),
//                              );
//
//                            },
//                              child: Text("Signin",
//                                style: TextStyle(
//                                  fontSize: 20,color: Colors.white,),
//
//                              ),
//                              color: Colors.amberAccent,
//                            ),
//
//                            Spacer(),
//
//
//                            //Signup Button
//
//                            FlatButton(onPressed:()
//                            {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => login()),
//                              );
//
//                            },
//                              child: Text("Go To Login",
//                                style: TextStyle(
//                                  fontSize: 20,color: Colors.white,),
//                              ),
//                              color: Colors.amberAccent,
//
//                            ),
//
//
//
//                          ],
//                        )
//
//
//
//                      ],
//                    ),
//
//
//                  ),

                ],
              ),
      ),
      ]
      ),
  ),
  )
  );











//  SingleChildScrollView(
//  child: Stack(
//  children: <Widget>[
//      CustomScrollView(
//        slivers: <Widget>[
////
//          SliverFixedExtentList(
//            itemExtent: 50.0,
//            delegate: SliverChildBuilderDelegate(
//                  (BuildContext context, int index) {
//                return
//                Container(
//                  alignment: Alignment.center,

//                  child:
//                         new     Container(
//
//            height: double.infinity,
//            width: double.infinity,
//
//            margin: EdgeInsets.all(40),
//            child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//
//
//            //Name TextField
//            TextField(
//            maxLines: 1,
//            textInputAction: TextInputAction.next,
//            keyboardType: TextInputType.text,
//            decoration: InputDecoration(
//            hintText: 'Full Name',
//            border: const OutlineInputBorder(),
//            ),
//            ),
//
//
//            SizedBox(height: 10),
//
//            //Mobile no TextField
//            TextField(
//            maxLines: 1,
//            textInputAction: TextInputAction.next,
//
//            keyboardType: TextInputType.number,
//            maxLength: 10,
//            decoration: InputDecoration(
//            hintText: 'Mobile No.',
//            border: const OutlineInputBorder(),
//            ),
//            ),
//
//
//            SizedBox(height: 10),
//
//
//            //Username TextField
//            TextField(
//            maxLines: 1,
//            textInputAction: TextInputAction.next,
//
//            keyboardType: TextInputType.emailAddress,
//            decoration: InputDecoration(
//            hintText: 'Username',
//            border: const OutlineInputBorder(),
//            ),
//            ),
//
//
//            SizedBox(height: 10),
//
//
//            //Password Textfield
//            TextField(
//            maxLines: 1,
//            textInputAction: TextInputAction.next,
//
//            keyboardType: TextInputType.visiblePassword,
//            decoration: InputDecoration(
//            hintText: 'Password',
//            border: const OutlineInputBorder(),
//            ),
//            ),
//
//            SizedBox(height: 10),
//
//            //Confirm Password Textfield
//            TextField(
//            maxLines: 1,
//            textInputAction: TextInputAction.done,
//
//            keyboardType: TextInputType.visiblePassword,
//            decoration: InputDecoration(
//            hintText: 'Confirm Password',
//            border: const OutlineInputBorder(),
//            ),
//            ),
//
//            SizedBox(height: 10),
//
//            //Button Row
//
//            Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//
//            //Login Button
//            FlatButton(onPressed:()
//
//            {
//            Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => Otp()),
//            );
//
//            },
//            child: Text("Signin",
//            style: TextStyle(
//            fontSize: 20,color: Colors.white,),
//
//            ),
//            color: Colors.amberAccent,
//            ),
//
//            Spacer(),
//
//
//            //Signup Button
//
//            FlatButton(onPressed:()
//            {
//            Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => login()),
//            );
//
//            },
//            child: Text("Go To Login",
//            style: TextStyle(
//            fontSize: 20,color: Colors.white,),
//            ),
//            color: Colors.amberAccent,
//
//            ),
//
//
//            ],
//            )
//
//
//            ],
//            ),
//
//
////            ),
//  ],
//                ),
//
//            ),
//          ),);
}

}




