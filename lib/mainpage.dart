import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {

  @override
  mainpageState createState() => mainpageState();
}

class mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 350),
          width:  500,
          height: 1000,
          color: Colors.blueAccent,
          child: Text(
            'MainPage',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 44,
                color: Colors.black54
          ),
          ),
        ),
      ),
    );
  }
}