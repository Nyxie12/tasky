import 'package:flutter/material.dart';
import 'package:tasky/loginpage.dart';
import 'package:tasky/splashscreen.dart';

// change

void main() => runApp(MaterialApp(
  theme: 
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellow),
    debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

