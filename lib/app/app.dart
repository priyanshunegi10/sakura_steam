import 'package:flutter/material.dart';
import 'package:sakura_steam/pages/login_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sakura stream",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}