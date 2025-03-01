import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakura_steam/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 239, 208),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 254, 239, 208),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Sakura Stream",
            style: GoogleFonts.dmSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We have something special for you",
                style: GoogleFonts.dmSans(fontSize: 16),
              ),
              const SizedBox(height: 60),
              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        "Create an account",
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // First Name
                      _buildTextField(
                        hintText: "First name",
                        icon: Icons.person,
                      ),
                      const SizedBox(height: 10),

                      // Last Name
                      _buildTextField(
                        hintText: "Last name",
                        icon: Icons.person,
                      ),
                      const SizedBox(height: 10),

                      // Email
                      _buildTextField(
                        hintText: "Enter your email",
                        icon: Icons.email,
                      ),
                      const SizedBox(height: 10),

                      // Password
                      _buildTextField(
                        hintText: "Enter your password",
                        icon: Icons.lock,
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),

                      // Create Account Button
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // White button
                            foregroundColor: Colors.black, // Black text
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),
                          child: const Text("Create Account"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom method to create text fields
  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextFormField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white), // Input text color
      cursorColor: Colors.white, // Cursor color
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        prefixIcon: Icon(icon, color: Colors.white), // Icon color
        filled: true,
        fillColor: Colors.black, // Background color
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
