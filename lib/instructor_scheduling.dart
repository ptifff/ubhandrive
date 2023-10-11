import 'package:flutter/material.dart';

import 'about_us.dart';


void main() {
  runApp(instructorscheduling());
}

class instructorscheduling extends StatelessWidget {
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
          title: Text('Scheduling'),
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
                Navigator.of(context).pushNamed('/learning_material');
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