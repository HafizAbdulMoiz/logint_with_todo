import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginshared/utils/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),()=>{
      Navigator.pushReplacementNamed(context, MyRoutes.LoginRoute)
    } );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/moon.jpg",fit: BoxFit.contain,),

          Positioned(
            top: 400.0,
            left: 60,
            child: Text("Welcome Back!",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}