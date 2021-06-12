



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ling/pages/sign_in/sign_up.dart';


class SignIn extends StatefulWidget {
  static final String id = "sing_in";
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( child:Container(
          padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                    children: [
                      SizedBox(width: 55,),
                      Image.network("https://play-lh.googleusercontent.com/qIIRp1gUYNMa183JscuBT_Ao63jn1n2Nfxbh5fKaD3MYW1EQyJUv33JDJLyH7JggLqak=rw", height: 100, width: 100,),
                      Text("LingBox", style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.black))
                  ]
                )
              ),
              SizedBox(height: 35,),
              Container(padding: EdgeInsets.only(left: 20),child :Text("Login to your Account", style: GoogleFonts.antic(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),)),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(20),
                child: Form(
                  child: Column(
                    children: [
                      //Email
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.5,
                              blurRadius: 0.4,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            hintText: "Id",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                            border: InputBorder.none
                            ),
                          ),
                        )
                      ),
                      SizedBox(height: 20,),
                      //Password
                      Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 0.5,
                                blurRadius: 0.4,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 19),
                                  border: InputBorder.none,
                              ),
                              obscureText: true,
                            ),
                          )
                      ),
                      SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: (){},
                          child: Text("Forgot password?", style: TextStyle(color: Colors.black),),
                        ),
                      ),
                      SizedBox(height: 5,),
                      //Sign In Button
                      Container(
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style:  ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Color(0xff64B6FF), Colors.deepPurpleAccent],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text("Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      //Sign Up link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          SizedBox(width: 20,),
                          TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, SignUp.id);
                              },
                              child: Text("Sign Up", style: TextStyle(color: Colors.black),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
        )
      ),
    );
  }
}

