import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakura_steam/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sakura Steam",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      home: LoginPage(),
    );
  }
}
