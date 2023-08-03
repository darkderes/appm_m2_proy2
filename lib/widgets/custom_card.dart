 import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color colorInput;
  const CustomCard({
    super.key,required this.text, required this.icon,required this.colorInput,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListTile(
        leading:Icon(icon, color: colorInput),
        title: Text(text, style: TextStyle(
          color: colorInput,
          fontSize: 20,
        )),
      ),
    );
  }
}
