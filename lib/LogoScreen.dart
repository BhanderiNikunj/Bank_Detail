import 'dart:async';

import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset("Assets/Images/logo.jpg"),
        ),
      ),
    );
  }
}
