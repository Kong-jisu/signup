import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';

class loading extends StatefulWidget {

  @override
  loadingA createState() => loadingA();
}

class loadingA extends State<loading> {

  String sign = 'SIGN UP';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        ),
            width:  500,
            height: 1000,
            child: Column(
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 350, bottom: 10, right: 100, left: 100),
                width: 350,
                child: Text(
                  sign,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
                Container(
                  width: 80,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {
        sign = 'SUCCESS';
      });
    });

    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => mainpage()));
    });
  }
}