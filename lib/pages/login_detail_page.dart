import 'package:flutter/material.dart';

class LoginDetailPage extends StatelessWidget {
  const LoginDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                            decoration: InputDecoration(
                                // label: Text(
                                //   "enter your email",
                                //   style: TextStyle(color: Colors.white),
                                // ),
                                hintText: "enter you gmail",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          );
  }
}