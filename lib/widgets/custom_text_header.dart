import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextHeader extends StatelessWidget {
  final String nombre;
  const TextHeader({
    super.key,required this.nombre, 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      nombre,
      style: GoogleFonts.dancingScript(
        textStyle: const TextStyle(
          fontSize: 50,
          color: Colors.white,
          fontWeight: FontWeight.bold
        )
      )
    );
  }
}