import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(253, 240, 213, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253, 240, 213, 1),
          title: Padding(
            padding: const EdgeInsets.only(left: 0, top: 20),
            child: Text(
              "Sakura steam",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("We have something for you"),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 600,
                      width: 400,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.black,
                        shadowColor: Colors.black,
                        elevation: 10,
                        child: Column(children: [
                          Text(
                            "Create an account",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter your email",
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
