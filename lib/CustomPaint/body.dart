import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      child: CustomPaint(
        painter: ABody(),
      ),
    );
  }
}

class ABody extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..strokeWidth = 10
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    var arc = Path();
    arc.moveTo(1, 200);
    arc.arcToPoint(Offset(400, 200),
        radius: const Radius.circular(30), clockwise: true);

    canvas.drawLine(Offset(100, 70), Offset(100, 160), paint1);
    canvas.drawLine(Offset(300, 70), Offset(300, 160), paint1);

    canvas.drawPath(arc, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
