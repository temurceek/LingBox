import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;
class IntroMainPage extends StatefulWidget {
  static const String id='intro_main_screen';
  const IntroMainPage({Key? key}) : super(key: key);
  static Widget screen()=>IntroMainPage();
  @override
  _IntroMainPageState createState() => _IntroMainPageState();
}

class _IntroMainPageState extends State<IntroMainPage> {
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
       body: Container(
         height: size.height,
         width: size.width,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Expanded(
               flex: 3,
               child: ClipPath(
                 clipper: MyClipper(),
                 child:Container(
                   height: size.width,
                   width: size.width,
                   decoration: BoxDecoration(
                     color: Colors.red,
                   ),
                 ),
               )
             ),
             Expanded(
               flex: 3,
               child: Container(
                 color: Colors.green,
               ),
             ),
             Expanded(
               flex: 1,
               child: Container(
                   color: Colors.blue,
               ),
             ),
           ],
         ),
       ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=new Path();
    path
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.width*0.7)
      ..quadraticBezierTo(size.width/2, size.width, 0, size.width*0.7)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false;
  }

}
