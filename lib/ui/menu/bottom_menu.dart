import 'package:demo_app/demo/Radio_demo.dart';
import 'package:demo_app/demo/demo_page.dart';
import 'package:demo_app/ui/cart/MyCart.dart';
import 'package:demo_app/ui/category/Category.dart';
import 'package:demo_app/ui/offers/Offers.dart';
import 'package:demo_app/ui/order/Order_Tab.dart';
import 'package:demo_app/ui/signup/Signup.dart';
import 'package:demo_app/ui/login/login.dart';
import 'package:demo_app/ui/menu/side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget
{
  BottomMenu({Key key}) : super(key: key);
  @override
  BottomBar createState() => BottomBar();


}

class BottomBar extends State<BottomMenu>
{
  int _selectedIndex = 2;
//  static const TextStyle optionStyle =
//  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions =
 [
   Category(),
   Ordertab(),
   SideMenu(),
   Offers(),
   MyCart(),


 ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

//      appBar: AppBar(title: Text("Demo Bar") ,),

      body:
      Container(
        child:
        _widgetOptions.elementAt(_selectedIndex),
//      Text(""),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.green,
//          primaryColor: Colors.black,
//          textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.white))
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,

//          selectedIconTheme: IconThemeData(size: 40),

//        selectedFontSize: 14.0,
//        unselectedFontSize: 10.0,
          items:
         <BottomNavigationBarItem>
            [

              //category
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/category.png",
                color: Colors.white,
                height: 30.0,
                width: 20.0,),
//              icon: Icon(Icons.category),
                title: Text("Category",),

              ),


          //orders
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/order.png",
              color: Colors.white,

              height: 30.0,
              width: 20.0,),
//          icon: Icon(Icons.bookmark_border),
            title: Text("Order"),
          ),


          //home
          BottomNavigationBarItem(

            icon: Image.asset("assets/images/home.png",
              color: Colors.white,

              height: 30.0,
              width: 20.0,),
//          icon: Icon(Icons.home),
            title: Text("Home",
           ),
          ),


           //offer
           BottomNavigationBarItem(

               icon: Image.asset("assets/images/offer.png",
                 color: Colors.white,

                 height: 30.0,
                 width: 20.0,),
//           icon: Icon(Icons.local_offer),
             title: Text("Offer")
           ),

           //cart
           BottomNavigationBarItem(

               icon: Image.asset("assets/images/cart.png",
                 color: Colors.white,

                 height: 30.0,
                 width: 20.0,),
//           icon: Icon(Icons.shopping_cart),
               title: Text("Cart")
           ),



         ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,

        ),
      ),



    );
  }

}