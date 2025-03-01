import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  title: const Text(
                    "Item 1",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
