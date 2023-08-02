import 'package:appm_m2_proy2/pages/onboard_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: "onboarding",
     routes: {
        "onboarding": (context) => const OnboardingScreen(),
     } ,
    );
  }
} 