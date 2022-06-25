import 'package:flutter/material.dart';
import 'package:loginshared/screens/home_page.dart';
import 'package:loginshared/screens/login_page.dart';
import 'package:loginshared/screens/splash_page.dart';
import 'package:loginshared/utils/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context)=> SplashPage(),
        MyRoutes.LoginRoute : (context) => LoginPage(),
        MyRoutes.HomeRoute : (context) => HomePage()
      },
    );
  }
}