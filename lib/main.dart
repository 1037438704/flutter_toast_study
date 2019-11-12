import 'package:flutter/material.dart';
import 'package:flutter_toast_study/page/HomeAty.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Toast',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toast'),
        ),
        body: HomeAty(),
      ),
    );
  }
  
}