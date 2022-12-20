import 'dart:async';
import 'package:flutter/material.dart';
import 'Home_Page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image(
                  height: 380,
                  width: 380,
                  image: AssetImage('images/Graphlogo.png')),
            ),
          ),
          // Text(
          //   "Crystal",
          //   style: TextStyle(
          //       fontSize: 40,
          //       color: Colors.orange,
          //       fontWeight: FontWeight.bold),
          // ),
          // Text(
          //   "Solution",
          //   style: TextStyle(
          //       fontSize: 40,
          //       color: Colors.indigo[900],
          //       fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}