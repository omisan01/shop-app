import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/homescreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
        accentColor: Color(0xFFE31A1A),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomeScreen(),
    );
  }
}

