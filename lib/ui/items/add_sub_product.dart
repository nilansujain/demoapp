import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddSubPro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddSubPro();
  }
}

class _AddSubPro extends State<AddSubPro> {
  int _n = 1;

  void add() {
    setState(() {
      _n++;
    });
  }

  void sub() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                // border: Border.all(width: 1.0, color:  Colors.green),
              ),
              child: IconButton(
                  icon: Image.asset(
                    "assets/images/ic_minus.png",
                  ),
                  onPressed: sub)),
          Container(
            width: 80,
            alignment: Alignment.center,
            child: new Text(
              '$_n',
              // style: new TextStyle(fontSize: 60.0)
            ),
          ),
          Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                color: Colors.green,
                // border: Border.all(width: 1.0, color:  Colors.green),
              ),
              child: IconButton(
                  icon: Image.asset(
                    "assets/images/ic_plush.png",
                  ),
                  onPressed: add)),
        ],
      ),
    );
  }
}
