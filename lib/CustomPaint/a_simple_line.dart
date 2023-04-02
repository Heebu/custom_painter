import 'package:flutter/material.dart';

class SimpleLine extends StatefulWidget {
  const SimpleLine({Key? key}) : super(key: key);

  @override
  State<SimpleLine> createState() => _SimpleLineState();
}

class _SimpleLineState extends State<SimpleLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(width: 15, color: Colors.white),
      ),
      height: 300 / 2,
      width: 300 / 2,
      child: CustomPaint(
        painter: ASimpleLine(),
      ),
    );
  }
}

class ASimpleLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      // //X axis
      // Offset(size.width * 1 / 6, size.height * 1 / 2),
      Offset(1, 100) / 2,
      // //Y axis
      // Offset(size.width * 5 / 6, size.height * 1 / 2),
      Offset(270, 100) / 2.1,

      //paint function
      paint,
    );

    canvas.drawLine(
      Offset(130, -5) / 2,
      Offset(130, 270) / 2.1,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
