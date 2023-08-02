import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextSubtitule extends StatelessWidget {
  final String datos;
  const TextSubtitule({
    super.key,required this.datos, 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      datos,
      style: GoogleFonts.bitter(
          fontSize: 20,color: const Color.fromARGB(255, 178, 223, 219),letterSpacing: 2.5, fontWeight: FontWeight.bold),
    );
  }
}