import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:tasky/loginpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(seconds: 4), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => LoginPage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
          Shimmer.fromColors(
            baseColor: Colors.black,
            highlightColor: Colors.white,
            child: Container(
              child: Center(
                child: Text(
                  "Tasky",
                  style: TextStyle(
                    fontSize: 90.0,
                    fontFamily: 'Pacifico'
                  )
                ),
              ),
            ),
          )

        ],),
      ),
    );
  }
}