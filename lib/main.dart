import 'package:flutter/material.dart';
import 'package:tryplore_shop/homepage.dart';
import 'package:tryplore_shop/pages/onboarding_page/first_page.dart';
import 'package:tryplore_shop/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingPage()
    );
  }
}

