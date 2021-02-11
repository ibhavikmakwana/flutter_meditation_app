import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/onboarding/sign_in_sign_up_entry_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silent Moon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'HelveticaNeue',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInSignUpEntryScreen(),
    );
  }
}
