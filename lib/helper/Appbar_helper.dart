
import 'package:demo_app/ui/menu/side_menu.dart';
import 'package:demo_app/ui/offers/Offers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbarhelper extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    return
      IconButton(icon: Icon(Icons.menu), onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  SideMenu()));
      });
  }



}