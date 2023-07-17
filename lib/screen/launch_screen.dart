

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init state");

    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_screen');
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
     body: Container(
       alignment: Alignment.center,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors:[
          Colors.lightBlue,
          Colors.lightGreen,

            ]

         )
       ),
       child: Text("تطبيق المسبحة" , style: GoogleFonts.arefRuqaa(
         fontSize: 50,
         fontWeight: FontWeight.normal
       ),


        ),

     ),
    );
  }
}

