import 'package:flutter/material.dart';
import 'package:sakura_steam/pages/home_page.dart';
// import 'package:sakura_steam/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sakura Steam",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
