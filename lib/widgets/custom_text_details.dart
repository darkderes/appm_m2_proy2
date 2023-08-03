import 'package:flutter/material.dart';

class CustomTextDetails extends StatelessWidget {
  final String text;
  const CustomTextDetails ({
    super.key,required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
