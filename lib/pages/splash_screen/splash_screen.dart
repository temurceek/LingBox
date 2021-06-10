import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  static const String id="splash_screen";
  const SplashPage({Key? key}) : super(key: key);
  static Widget screen()=>SplashPage();
  @override _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
