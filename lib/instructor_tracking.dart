
import 'package:flutter/material.dart';

import 'login.dart';



void main() {
  runApp(instructortracking());
}


class instructortracking extends StatelessWidget {
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
          title: Text('tracking'),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                // Implement logout functionality here
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              FeatureDrawerButton(icon: Icons.school, text: 'Learning', onTap: () {
                Navigator.of(context).pushNamed('/instructor_uploading');
              },),
              FeatureDrawerButton(icon: Icons.book, text: 'Booking', onTap: () {
                Navigator.of(context).pushNamed('/instructor_booking');
              },),
              FeatureDrawerButton(icon: Icons.schedule, text: 'Scheduling', onTap: () {
                Navigator.of(context).pushNamed('/learner_scheduling'); },),
              FeatureDrawerButton(icon: Icons.track_changes, text: 'Tracking', onTap: () {
                Navigator.of(context).pushNamed('/learner_tracking');
              },),
              FeatureDrawerButton(icon: Icons.live_help, text: 'Assistance Service', onTap: () {
                Navigator.of(context).pushNamed('/assistance_service_student'); },),
              FeatureDrawerButton(icon: Icons.info, text: 'About Us', onTap: () {
                Navigator.of(context).pushNamed('/about_us'); },),
              FeatureDrawerButton(icon: Icons.logout, text: 'Logout', onTap: () {  },),
            ],
          ),
        ),
      ),
    );
  }
}
class FeatureDrawerButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function() onTap;



  FeatureDrawerButton({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18.0,
          ),
        ),
        onTap: onTap
    );
  }
}
