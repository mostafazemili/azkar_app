import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:msb/screen/home_screen.dart';
import 'package:msb/screen/launch_screen.dart';

import 'screen/info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),

      ],
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
       initialRoute: '/launch_screen' ,
      routes: {

        '/launch_screen': (context)=>const LaunchScreen(),
        '/home_screen': (context)=>const HomeScreen(),
        '/info_screen': (context)=>const InfoScreen(),

      },
    );
  }
}
