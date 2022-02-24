import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  int planetMotionSensitivity = 5;
  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }

  _navigateToHome()async{
    await Future.delayed(const Duration(milliseconds: 3500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Anasayfa()));
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenheight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            height: screenheight,
            width: screenwidth,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/cocuksplash.png'),fit: BoxFit.fitHeight),),
          ),
        )
      ),
    );
  }
}

