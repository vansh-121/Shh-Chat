import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the google_fonts package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GenderVerification(),
    );
  }
}

class GenderVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF3A8FF), // Light pink at the top
                  Color(0xFF8DDFFF), // Light blue at the bottom
                ],
              ),
            ),
          ),
          // Emoji decorations
          Positioned(
            top: 80,
            left: 50,
            child: Text("😎", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 60,
            right: 60,
            child: Text("🌶️", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 120,
            right: 40,
            child: Text("😘", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 150,
            left: 70,
            child: Text("👀", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 180,
            left: 40,
            child: Text("🙈", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 200,
            right: 50,
            child: Text("👅", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 220,
            left: 60,
            child: Text("🔥", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 260,
            right: 70,
            child: Text("💦", style: TextStyle(fontSize: 30)),
          ),
          Positioned(
            top: 280,
            left: 80,
            child: Text("💌", style: TextStyle(fontSize: 30)),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo (using a placeholder container with gradient)
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.pink],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Main text with Inter font
                Text(
                  "ANONYMOUS CHATS\nWHERE YOU CAN MAKE\nREAL MONEY",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                // Question text with Inter font
                Text(
                  "How do you identify yourself?",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                // Buttons with Inter font
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text("👩", style: TextStyle(fontSize: 20)),
                          SizedBox(width: 10),
                          Text(
                            "I'm female",
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text("👨", style: TextStyle(fontSize: 20)),
                          SizedBox(width: 10),
                          Text(
                            "I'm male",
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "I'm non-binary",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
