import 'dart:ui';
import 'package:flutter/material.dart';

class OnboardContent {
  String image;
  String name;
  String description;
  String phone;
  String email;

  OnboardContent({required this.image,required this.name,required this.description,required this.phone,required this.email});
}
OnboardContent onboardContent = 
  OnboardContent(
    image: 'assets/images/unnamed.jpg',
    name: 'Jorge Darderes',
    description: 'Software Developer',
    phone: '+56 9 89139107',
    email: 'jodarderes@gmail.com',
  );

class SoftSkills {
  String skills;
  SoftSkills({required this.skills});
}

List<SoftSkills> listSoftSkills = [
  SoftSkills(skills: 'Comunicación'),
  SoftSkills(skills: 'Trabajo en equipo'),
  SoftSkills(skills: 'Liderazgo'),
  SoftSkills(skills: 'Pensamiento crítico'),
  SoftSkills(skills: 'Creatividad'),
  SoftSkills(skills: 'Resolución de problemas'),
  SoftSkills(skills: 'Adaptabilidad'),
];  

class HardSkills {
  String skills;
  double value;
  HardSkills({required this.skills,required this.value});
}

List<HardSkills> listHardSkills = [
  HardSkills(skills: 'Flutter',value: 8),
  HardSkills(skills: 'Dart',value: 6),
  HardSkills(skills: 'Java',value: 5),
  HardSkills(skills: 'C#',value: 9),
];

class SocialMedia {
  final String url;
  final String imageAsset;

  SocialMedia({required this.url, required this.imageAsset});
}

List<SocialMedia> socialMediaList = [
  SocialMedia(url: 'https://www.facebook.com/profile.php?id==10211677653756378', imageAsset: 'assets/images/facebook.png'),
  SocialMedia(url: 'https://github.com/darkderes/', imageAsset: 'assets/images/github.png'),
  SocialMedia(url: 'https://twitter.com/jdarderes', imageAsset: 'assets/images/witter.png'),
];

List page = ["profile", "soft_skills","hard_skills","social_media"];

 List<Color> pageColors = [
    const Color.fromARGB(255, 7, 41, 70), // Color de la página 0 (Profile)
    const Color.fromARGB(255, 7, 49, 9), // Color de la página 1 (SoftSkill)
    const Color.fromARGB(255, 75, 49, 10), // Color de la página 2 (HardSkill)
    const Color.fromARGB(255, 88, 11, 15), // Color de la página 3 (SocialMedias)
  ];


