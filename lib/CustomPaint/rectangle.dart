import 'package:flutter/material.dart';

class RectanglePaint extends StatelessWidget {
  const RectanglePaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 150,
      width: 150,
      child: CustomPaint(
        painter: RectPaint(),
      ),
    );
  }
}

class RectPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //lines in it
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(size.width / size.width, size.height * 0.5),
      Offset(size.width * 1, size.width * .5),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .5, size.height / size.height),
      Offset(size.width * .5, size.height * .97),
      paint,
    );

    //frame
    Paint rectPainting = Paint()
      ..color = Colors.brown.shade500
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    var a = Offset(size.width, 1);
    var b = Offset(1, size.height);

    Rect rect = Rect.fromPoints(a, b);
    canvas.drawRect(rect, rectPainting);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
