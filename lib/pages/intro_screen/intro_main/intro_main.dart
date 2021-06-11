import 'dart:ui';

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
       body: Stack(
         children: [
           Container(
             height: size.height,
             width: size.width,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Expanded(
                   flex: 4,
                   child: ClipPath(
                     clipper: MyClipper(),
                     child:Container(
                         height: size.width,
                         width: size.width,
                         decoration: BoxDecoration(
                           // gradient: LinearGradient(
                           //     begin: Alignment.bottomLeft,
                           //     end: Alignment.topRight,
                           //     colors: [
                           //       Colors.blue,
                           //       Colors.blue[500]!,
                           //     ]
                           // ),
                           color: Color(0xFF323232),
                         ),
                         child: Center(
                           child: ClipRect(
                             child: Container(
                               height: size.width*0.7,
                               width: size.width*0.7,
                               child: Image.asset('assets/images/ic_image.png',fit: BoxFit.contain,),
                             ),
                           ),
                         )
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 3,
                   child: Container(
                       padding: EdgeInsets.symmetric(vertical: 15),
                       width: size.width,
                       color: Colors.transparent,
                       child:Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Flexible(
                             child: Container(
                               // decoration:BoxDecoration(
                               //   borderRadius:BorderRadius.circular(20),
                               //   border: Border.all(color: Colors.blue,width: 4)
                               // ),
                               margin: EdgeInsets.only(left: 10,right: 10),
                               padding:EdgeInsets.symmetric(horizontal:10,vertical: 15),
                               child: RichText(
                                 textAlign: TextAlign.center,
                                 text:TextSpan(
                                     text:"LingBox\n",
                                     style: TextStyle(color:Colors.blue,fontSize: 20,fontWeight: FontWeight.w700),
                                     children:[
                                       TextSpan(
                                           text: 'Muhabbat bu oʻzganing ahvoli haqida xuddi oʻzingniki kabi qaygʻurishingdir. Bir paytlar ukang bilan munosabatlaring juda iliq boʻlgan, endi esa yoʻq. Sen oʻsha damlarni qaytarishni xohlaysan. Munosabatlaring uzilib ketishini istamaysan. Lekin odamzodning qismati shu. Rishtalar  uziladi, tiklanadi, uziladi, tiklanadi.',
                                           style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600)
                                       )
                                     ]
                                 ),
                               ),
                             ),
                           )
                         ],
                       )
                   ),
                 ),
                 Expanded(
                   flex: 2,
                   child: Container(
                     padding: EdgeInsets.symmetric(horizontal: 15),
                     child: Center(
                         child:InkWell(
                           child:Container(
                               width: size.width,
                               height: size.width*0.15,
                               decoration: BoxDecoration(
                                   color: Colors.blue,
                                   borderRadius: BorderRadius.circular(size.width*0.15/2)
                               ),
                               child: Center(
                                 child: Text("start",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                               )
                           ),
                           splashColor: Colors.grey,
                           borderRadius: BorderRadius.circular(size.width*0.15/2),
                           onTap:(){
                             print("hello world");
                           },
                         )
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Positioned(
               top:size.width*0.9,
               child:Transform.translate(
                 offset: Offset(-30,0),
               child: Container(
                 height:size.width*0.15,
                 width:size.width*0.15,
                 decoration: BoxDecoration(
                     color: Colors.blue,
                     shape: BoxShape.circle
                 ),
               ),
               ),
           ),

           Positioned(
             right: 0,
             bottom: size.width*0.4,
             child:Transform.translate(
               offset: Offset(30,0),
               child: Container(
                 height:size.width*0.15,
                 width:size.width*0.15,
                 decoration: BoxDecoration(
                     color: Colors.blue,
                     shape: BoxShape.circle
                 ),
               ),
             ),
           ),
         ],
       )
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
