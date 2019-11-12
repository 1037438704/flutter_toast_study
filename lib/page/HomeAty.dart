import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeAty extends StatefulWidget {
  @override
  _HomeAtyState createState() => _HomeAtyState();
}

class _HomeAtyState extends State<HomeAty> {
  String app = "点击Toast";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Text(app),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  //显示时常
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
              setState(() {
                app = "点击了";
              });
            },
          )
        ],
      ),
    );
  }
}
