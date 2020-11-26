import 'dart:async';

import 'package:flutter/material.dart';
import 'package:productos_y_paises/app_config.dart';
import 'package:productos_y_paises/presentations/widgets/loading.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, 'home')
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bienvenido', style: TextStyle(fontSize: 30, color: AppColors.mainColor, fontWeight: FontWeight.bold),),
          LoadingHome()
        ],
      ),
    );
  }
}