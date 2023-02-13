import 'package:bank_detail/DetailPage.dart';
import 'package:bank_detail/HomePage.dart';
import 'package:bank_detail/LogoScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Logo(),
        'home':(context) => Home(),
        'detail':(context) => Detail(),
      },
    ),
  );
}
