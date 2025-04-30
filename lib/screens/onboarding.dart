import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFB3E5FC), // Light blue
                  Color(0xFFF8BBD0), // Light pink
                ],
              ),
            ),
          ),
          // Scattered emojis
          Positioned(
              top: 50,
              left: 40,
              child: Text('😎', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 70,
              right: 50,
              child: Text('🥵', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 100,
              left: 100,
              child: Text('😱', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 120,
              right: 80,
              child: Text('💦', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 150,
              left: 50,
              child: Text('👀', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 180,
              right: 60,
              child: Text('👅', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 200,
              left: 80,
              child: Text('🔥', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 220,
              right: 70,
              child: Text('💌', style: TextStyle(fontSize: 30))),
          Positioned(
              top: 160,
              left: 120,
              child: Text('🙈', style: TextStyle(fontSize: 30))),
          // Centered content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo (simulated with a gradient heart)
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF42A5F5), Color(0xFFF06292)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Title text
                Text(
                  'Anonymous chats\nwhere you can make\nreal money',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                // Subtitle text
                Text(
                  'Meet random people in chats.\nGift or receive tokens.\nWithdraw cash or redeem for stuff.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 40),
                // Sign in with Apple button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.black,
                      size: 24,
                    ),
                    label: Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(double.infinity, 50),
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
