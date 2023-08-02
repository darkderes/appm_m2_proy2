 import 'package:flutter/material.dart';

import '../data/contents_onboard.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomCard({
    super.key,required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListTile(
        leading:Icon(icon, color: pageColors[0]),
        title: Text(text, style: const TextStyle(
          color: Color.fromARGB(255, 0, 77, 64),
          fontSize: 20,
        )),
      ),
    );
  }
}
