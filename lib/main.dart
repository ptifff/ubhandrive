
import 'package:drive_ubhan/login.dart';
import 'package:drive_ubhan/signup.dart';
import 'package:drive_ubhan/splash_screen.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'assistance_service_student.dart';
import 'booking.dart';
import 'homeScreen.dart';
import 'instructor_booking.dart';
import 'instructor_homescreen.dart';
import 'instructor_lecture_uploads.dart';
import 'learner_scheduling.dart';
import 'learner_tracking.dart';
import 'selection_screen.dart';


void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
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
      initialRoute: '/splash_screen',
      routes: {
         '/splash_screen': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpForm(),
        '/homeScreen': (context) => HomeScreen(),
        '/learning_material': (context) => LearningScreen(),
        '/learner_scheduling': (context) => learnerscheduling(),
        '/learner_tracking': (context) => learnertracking(),
        '/instructor_booking': (context) => instructorbooking(),// You can pass actual data here
        '/assistance_service_student': (context) => AssistanceServiceScreen(),
        '/about_us': (context) => AboutUsScreen(),
        '/instructor_homescreen': (context) => InstructorHomeScreen(),
        '/instructor_uploading': (context) => SelectionScreen(),
        '/instructor_lectures_uploads': (context) => InstructorUploadScreen(),


      },

    );
  }
}

