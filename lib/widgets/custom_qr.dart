import 'package:flutter/material.dart';
import 'package:custom_qr_generator/custom_qr_generator.dart';

class CustomQr extends StatelessWidget {
  final String nombre;
  const CustomQr({
    super.key,
    required this.nombre,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: QrPainter(
          data: nombre,
          options: const QrOptions(
              shapes: QrShapes(
                  darkPixel: QrPixelShapeRoundCorners(cornerFraction: .5),
                  frame: QrFrameShapeRoundCorners(cornerFraction: .25),
                  ball: QrBallShapeRoundCorners(cornerFraction: .25)),
              colors: QrColors(
                  dark: QrColorLinearGradient(colors: [
                Color.fromARGB(255, 72, 75, 211),
                Color.fromARGB(255, 9, 9, 66),
              ], orientation: GradientOrientation.leftDiagonal)))),
      size: const Size(150, 150),
    );
  }
}
