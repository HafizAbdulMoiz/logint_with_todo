import 'package:flutter/material.dart';
import 'package:loginshared/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/one.png"),

          Padding(
            padding: const EdgeInsets.only(top:310.0),
            child: Container(
              decoration: BoxDecoration(

              color: Color.fromARGB(255, 8, 35, 53),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:340.0 , left: 50),
            child: Text("Welcome Back!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:380.0 , left: 50),
            child: Text('''Long time no see! Let’s login 
to get started''',style: TextStyle(color: Colors.grey,fontSize: 18),),
          ),

          Padding(
            padding: const EdgeInsets.only(top:420.0),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    
                    hintText: "Enter Email",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:500.0),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextField(
                  // controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    
                    hintText: "Enter Password",
                    
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:620.0,left: 80),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:88.0),
              child: ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, MyRoutes.HomeRoute);
              }, child: Text("Login")),
            ),
          )
        ],
      ),
    );
  }
}

