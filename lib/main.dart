import 'package:flutter/material.dart';
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
      routes: {
        SplashPage.id:(context)=>SplashPage.screen(),
      },
      home: SplashPage.screen(),
    );
  }
}

