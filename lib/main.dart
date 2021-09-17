import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'package:transition/transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String inputs = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: 350,
            height: 1000,
            margin: const EdgeInsets.all(50),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: const Text(
                      'Have an account?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
                    child: const Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Container(
                      child: TextField(
                        cursorColor: Colors.black54,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        onChanged: (String str) {
                          setState(() => inputs = str);
                        },
                      ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
                    child: const Text(
                      'E-mail',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      cursorColor: Colors.black54,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      onChanged: (String str) {
                        setState(() => inputs = str);
                      },
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
                    child: const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.black54,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      onChanged: (String str) {
                        setState(() => inputs = str);
                      },
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
                    child: const Text(
                      'Confrim Password',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.black54,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      onChanged: (String str) {
                        setState(() => inputs = str);
                      },
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 50),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          Transition(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: loading()),
                              transitionEffect: TransitionEffect.SCALE),
                        );
                      },
                      color: Colors.blueAccent,
                      child: Text(
                        'SIGN UP'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

