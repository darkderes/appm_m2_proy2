import 'package:flutter/material.dart';
import '../data/contents_onboard.dart';
import '../widgets/custom_text_header.dart';
import '../widgets/custom_text_subtitule.dart';
class Header extends StatelessWidget {
  const Header({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
     CircleAvatar(
    radius: 50, // Ajusta el radio según tus necesidades
    backgroundColor: Colors.transparent, // Fondo transparente para que la imagen se muestre en el círculo
    child: ClipOval(
      child: Image.asset(
        onboardContent.image,
        fit: BoxFit.cover, // Ajustar la imagen para que se ajuste completamente dentro del círculo
        width: 100, // Ajusta el ancho de la imagen según tus necesidades
        height: 100, // Ajusta la altura de la imagen según tus necesidades
      ),
    ),
  ),
           const SizedBox(
             height: 20,
           ),
           TextHeader(nombre:onboardContent.name.toString()),
           const SizedBox(
             height: 20,
           ),
           TextSubtitule(datos: onboardContent.description.toString()),
           const SizedBox(
             height: 20,
           ),
          ], 
          );
  }
}