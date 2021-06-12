import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ling/pages/intro_screen/intro_main/intro_main.dart';
import 'package:ling/pages/sign_in/sign_in.dart';
class SplashPage extends StatefulWidget {
  static const String id="splash_screen";
  const SplashPage({Key? key}) : super(key: key);
  static Widget screen()=>SplashPage();
  @override _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void timer(){
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacementNamed(context,IntroMainPage.id));
  }
  @override void initState() {
    timer();
    super.initState();
  }
  @override Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
       body: Center(
         child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
            Column(
               children: <Widget>[
                 Image.asset("assets/images/ic_image1.PNG",height: size.width*0.7,width:size.width*0.7,),
                 Transform.translate(
                   offset:Offset(0,-size.width*0.1),
                   child: Text("LingBox",style: GoogleFonts.poppins(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                 ),
               ],
             ),
               Text("POSPERO",style:GoogleFonts.josefinSans(color: Colors.blueGrey, fontWeight: FontWeight.w600,fontSize: 18,),),
            ],
           ),
         )
       )
    );
  }
}
