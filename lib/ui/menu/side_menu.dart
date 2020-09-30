import 'package:demo_app/demo/demo_page.dart';
import 'package:demo_app/ui/about%20us/About_us.dart';
import 'package:demo_app/ui/address/select_address.dart';
import 'package:demo_app/ui/cart/MyCart.dart';
import 'package:demo_app/ui/category/Category.dart';
import 'package:demo_app/ui/customer_service/CustomerService.dart';
import 'package:demo_app/ui/dashboard/dashboard.dart';
import 'package:demo_app/ui/items/item_side_menu.dart';

import 'package:demo_app/ui/notifications/NotificationTab.dart';
import 'package:demo_app/ui/offers/Offers.dart';
import 'package:demo_app/ui/order/Order_Tab.dart';
import 'package:demo_app/ui/productdetail/product_list.dart';
import 'package:demo_app/ui/profile/edit_profile.dart';
import 'package:demo_app/ui/welcome/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum SingingCharacter { English, Arabic }

class SideMenu extends StatefulWidget
{
  _SideMenu createState() => _SideMenu();
}

class _SideMenu extends State<SideMenu>
{
  SingingCharacter _character = SingingCharacter.English;


  @override
  Widget build(BuildContext context) {

    return
        Scaffold(
          appBar: AppBar(title: ListTile(title: Text("90",
          maxLines: 1,
          style: TextStyle(
            color: Colors.white
          ),),
          subtitle: Text("shyamvihar, pinrapol gaushala",
          maxLines: 1,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white
          ),),),
          backgroundColor: Colors.green,
          actions: [

            //app bar star like
            Container(
                alignment: Alignment.center,
                // margin: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
                  },
                 icon: Icon(Icons.star_border,
                    color: Colors.white,
                  ),
                )),

            //app bar cart
            Container(
                alignment: Alignment.center,
                // margin: EdgeInsets.only(right: 10.0),
                child: IconButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                    },
                    icon: Icon(Icons.add_shopping_cart,
                    color: Colors.white,
                   ))),
          ],),


          //body
          body: Center(
            // child: Text("my page"),
            child:
              Dashboard(),
          ),

          drawer:

          Drawer(

            // drawer begains
            child: Container(
              color: Colors.deepPurple[800],
              child: ListView(


                padding: EdgeInsets.zero,
                children: [
//                DrawerHeader(child:Text("Welcome, Nilansu Jain",
//                style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 18,
//                ),
//                maxLines: 1,),
//                  decoration: BoxDecoration(
//                    color: Colors.green,
//
//                  ),
//                ),

                // drawer head
                Container(
                  height: 80,
                  padding: EdgeInsets.all(10.0),
                  color: Colors.green,
              alignment: Alignment.bottomLeft,
              child:Text("Welcome, Nilansu Jain",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  maxLines: 1,),
                ),

                  //location box
                  FlatButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectAddress()));
                    },
                    child: Container(
//                      padding: EdgeInsets.all(1.0),
                      height: 60,
//                      margin: EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 10.0),
                    margin: EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                         border: Border.all(width: 2.0, color:  Colors.white)
                      ),
                      child: Row(
                        children: [

                          //location image
                          Container(
                            padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.location_on,color: Colors.white,)),


                          //address
                          Expanded(child:
                          Container(
                            margin: EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Column(
                              children: [

                                Text("90",
                                  maxLines: 1,
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                  ),),

                                Text("14, shyam vihar, behind pinjrapol gaushal",
                                maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.white,

                                    ),)
                              ],
                            ),
                          ))
                        ],
                      )
                    ),
                  ),


                  //my account
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 20.0, left: 20.0),
                    child:
                    ExpansionTile(
                      leading: Image.asset("assets/images/ic_menu_my_account.png",
                      color: Colors.white,
                      height: 20,
                      width: 20,),
                      title: Text("My Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),),
                      trailing: Icon(Icons.add,
                      color: Colors.white,
                      size: 25.0,),

                      children: [
                        //my profile
                        Container(
                          alignment:  Alignment.topLeft,
                          margin: EdgeInsets.only( left: 20),
                          height: 30,
                          child:
                          FlatButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                            },

                            child: ListTile(
                              leading: Image.asset("assets/images/ic_menu_my_account.png",
                                color: Colors.white,
                                height: 20,
                                width: 20,),

                              title: Text("My Profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),),

                            ),
                          ),
                        ),

//                        //my cart
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 20),

                          height: 30,
                          child: FlatButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                            },
                            child: ListTile(
                              leading: Image.asset("assets/images/ic_menu_shop_cart.png",
                                color: Colors.white,
                                height: 20,
                                width: 20,),

                              title: Text("My Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),),

                            ),
                          ),
                        ),

//                        // My address
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 20),

                          height: 30,
                          child: FlatButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectAddress()));
                            },
                            child: ListTile(
                              leading: Image.asset("assets/images/ic_menu_my_address.png",
                                color: Colors.white,
                                height: 20,
                                width: 20,),

                              title: Text("My Address",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),),

                            ),
                          ),
                        ),

//                        // my order
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 20),

                          height: 30,
                          child: FlatButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Ordertab()));
                            },
                            child: ListTile(
                              leading: Image.asset("assets/images/ic_menu_order.png",
                                color: Colors.white,
                                height: 20,
                                width: 20,),

                              title: Text("My Order",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),),

                            ),
                          ),
                        ),

//                        //my favorites
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 20),

                          height: 30,
                          child: FlatButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
                            },
                            child: ListTile(
                              leading: Image.asset("assets/images/ic_menu_favorites.png",
                                color: Colors.white,
                                height: 20,
                                width: 20,),

                              title: Text("My Favortes",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),),

                            ),
                          ),
                        ),

//                        // offer zone
                        Container(

                          margin: EdgeInsets.only(top: 10, bottom: 20, left: 20.0),

                          height: 30,
                          child: FlatButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Offers()));
                            },
                            child: ListTile(
                              leading: Image.asset("assets/images/ic_menu_offer.png",
                                color: Colors.white,
                                height: 20,
                                width: 20,),

                              title: Text("Offer Zone",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),),

                            ),
                          ),
                        ),




                      ],
                    ),
                  ),

                  //customer service
                  Container(
                    alignment: Alignment.center,
//                    margin: EdgeInsets.only(top: 10),

                    height: 30,
                    child:

                    FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerService()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_call.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),
//                    leading: Icon(Icons.call,
//                    color: Colors.white,),
                        title: Text("Customer Service",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),

                  //shop by category
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 30,
                    child: FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_shop_cart.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("Shop By category",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),
                        trailing: Image.asset("assets/images/ic_menu_s.png",color: Colors.white,
                        height: 15,
                        width: 15,)
                      ),
                    ),
                  ),

                  //notification
                  Container(
                    margin: EdgeInsets.only(top: 10),

                    height: 30,
                    child: FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationTab()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_notification.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("Notification",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),

                  // how to use
                  Container(
                    margin: EdgeInsets.only(top: 10),

                    height: 30,
                    child: FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_howuse.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("How to use",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),

                  //invite your friend
                  Container(
                    margin: EdgeInsets.only(top: 10),

                    height: 30,
                    child: FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => demopage()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_invite.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("Invite your Friend",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),

                  //about
                  Container(
                    margin: EdgeInsets.only(top: 10),

                    height: 30,
                    child: FlatButton(onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_info.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("About",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),

                //rate us
                  Container(
                    margin: EdgeInsets.only(top: 10),

                    height: 30,
                    child: FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => demopage()));
                      },
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_rateus.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("Rate us",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),


                  //Social media
                  Container(
                    margin: EdgeInsets.only(top: 50),

                    height: 30,
                    child: FlatButton(
                      child: ListTile(
                        leading: Image.asset("assets/images/ic_menu_social.png",
                          color: Colors.white,
                          height: 20,
                          width: 20,),

                        title: Text("Social media",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0
                          ),),

                      ),
                    ),
                  ),


                  //social apps
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
//                    child: Row(
//                      children: [
                    child:  ListTile(
                    leading: Image.asset("assets/images/ic_menu_whatsapp.png",
                      height: 30,
                      width: 30,),
                    title: Image.asset("assets/images/ic_facebook.png",
                    height: 30.0,
                    width: 30.0,),
                    trailing: Image.asset("assets/images/ic_twitter.png",
                    height: 30.0,
                    width: 30.0,),
                    ),

//                        ListTile(
//                          leading: Image.asset("assets/images/ic_facebook.png",
//                            color: Colors.white,
//                            height: 20,
//                            width: 20,),),
//
//                        ListTile(
//                          leading: Image.asset("assets/images/ic_twitter.png",
//                            color: Colors.white,
//                            height: 25,
//                            width: 25,),),
//                      ],
//                    ),
                  ),


                    //language
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color:  Colors.white)
                    ),
                    margin: EdgeInsets.only(top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                    height: 85.0,
                    child: Column(
                      children: [
                        Text("Language",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Expanded(
                          child: ListTile(
                            title: const Text('English',
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            leading: Radio(
                              hoverColor: Colors.white,
                              activeColor: Colors.green,
                              value: SingingCharacter.English,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ),

                        Expanded (
                          child: ListTile(
                              title: const Text('Arabic',
                              style: TextStyle(
                                color: Colors.white
                              ),),
                              leading: Radio(
                                focusColor: Colors.white,
                                activeColor: Colors.green,

                                value: SingingCharacter.Arabic,
                                groupValue: _character,
                                onChanged: (SingingCharacter value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                        ),

                      ],
                    ),

                      ],
                    ),
                    ),






// example of listtile
//                  ListTile(
//                    trailing: Icon(Icons.arrow_forward_ios),
//                    title: Text(" full name"),
//                    subtitle: Text("name"),
//                    leading: IconButton(icon: Icon(Icons.face), onPressed: null),
//                    focusColor: Colors.blue,
//                    onTap:()
//                      {
////                      Navigator.push(context,
////                      MaterialPageRoute(builder: (context)=> BottomMenu()));
//                    Navigator.pushNamed(context, "/ui/bottommenu");
//                      }
//
//                  ),


                ],
              ),
            ),
          ),
        );
  }

}
