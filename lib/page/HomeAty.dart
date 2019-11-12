import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeAty extends StatefulWidget {
  @override
  _HomeAtyState createState() => _HomeAtyState();
}

class _HomeAtyState extends State<HomeAty> {
  String app = "点击Toast";
  //显示位置
  ToastGravity displayPosition;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Text("显示在界面头部"),
            onTap: () {
              app = "点击了头部按钮";
              displayPosition = ToastGravity.TOP;
              toast();
            },
          ),
          GestureDetector(
            child: Text("显示在界面中间"),
            onTap: () {
              app = "点击了中间按钮";
              displayPosition = ToastGravity.CENTER;
              toast();
            },
          ),
          GestureDetector(
            child: Text("显示在界面底部"),
            onTap: () {
              app = "点击了底部按钮";
              displayPosition = ToastGravity.BOTTOM;
              toast();
            },
          ),
          Expanded(
            child: Center(
              child: Text(app,style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 20,
              ),),
            ),
          )

        ],
      ),
    );
  }

  void toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        //显示时常
        toastLength: Toast.LENGTH_LONG,
        gravity: displayPosition,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    setState(() {



    });
  }
}
