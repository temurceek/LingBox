import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: Color(0xFFFEFEFE),
       body: Center(
         child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
            Column(
               children: <Widget>[
                 Image.network("https://play-lh.googleusercontent.com/qIIRp1gUYNMa183JscuBT_Ao63jn1n2Nfxbh5fKaD3MYW1EQyJUv33JDJLyH7JggLqak=rw",height: size.width*0.7,width:size.width*0.7,),
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
