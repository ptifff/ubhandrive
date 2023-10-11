import 'package:flutter/material.dart';

import 'homeScreen.dart';
import 'instructor_homescreen.dart';
import 'login.dart';
import 'login_student.dart';

void main() {
  runApp(SelectionScreen());
}
class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        hintColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.purple,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Learning Material'),
          ),
          body: Container(
            color: Colors.white, // White background
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly distribute the panels
                  children: [
                    Container(
                      width: 150.0, // Specify the width
                      height: 150.0, // Specify the height
                      child: PanelCard(
                        icon: Icons.library_books,
                        label: 'Lectures',
                      ),
                    ),
                    SizedBox(width: 20.0), // Gap between panels
                    Container(
                      width: 150.0, // Specify the width
                      height: 150.0, // Specify the height
                      child: PanelCard(
                        icon: Icons.library_books,
                        label: 'Quizes',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}

class PanelCard extends StatelessWidget {
  final IconData icon;
  final String label;

  PanelCard({
    required this.icon,
    required this.label,
  });
  void _handlePanelTap(BuildContext context) {
    // Add your desired action here when the panel is tapped.
    // For example, you can navigate to a new screen.
    if (label == 'Instructor') {
      // Navigate to the Instructor screen.
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else if (label == 'Student') {
      // Navigate to the Student screen.
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => StudentLogin()),
      );
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handlePanelTap(context),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200], // Light grey background
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Colors.purple, // Purple icon
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

