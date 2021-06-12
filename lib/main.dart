import 'package:flutter/material.dart';
import 'package:ling/pages/intro_screen/intro_main/intro_main.dart';
import 'package:ling/pages/sign_in/sign_in.dart';
import 'package:ling/pages/sign_in/sign_up.dart';
import 'package:ling/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        SplashPage.id:(context)=>SplashPage.screen(),
        IntroMainPage.id:(context)=>IntroMainPage.screen(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp()
      },
      //home: SplashPage.screen(),
      home: SignIn(),
    );
  }
}

