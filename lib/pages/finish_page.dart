import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Gracias por revisar mi perfil",style: GoogleFonts.dancingScript(
        textStyle: const TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 34, 22, 22),
          fontWeight: FontWeight.bold
        )
      )),
      )
    );
  }
}