import 'package:flutter/material.dart';

class HeadPaint extends StatefulWidget {
  const HeadPaint({Key? key}) : super(key: key);

  @override
  State<HeadPaint> createState() => _HeadPaintState();
}

class _HeadPaintState extends State<HeadPaint> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      //color: Colors.pink,
      child: CustomPaint(
        painter: AHeadPaint(),
      ),
    );
  }
}

class AHeadPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.height / 2, size.height / 2);

    var headCircle = Paint()..color = Colors.red;
    var lineCircle = Paint()
      ..color = Colors.white
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    //the Mouth
    var arc1 = Path();
    arc1.moveTo(size.width / 2 - 120, size.width / 2);
    arc1.arcToPoint(Offset(320, size.width / 2),
        radius: const Radius.circular(10), clockwise: false);

    var arc2 = Path();
    arc2.moveTo(95, 260);
    arc2.arcToPoint(Offset(305, 260),
        radius: const Radius.circular(10), clockwise: false);

    //head
    canvas.drawCircle(center, (size.width * 0.5), headCircle);
    canvas.drawCircle(center, (size.width * .5), lineCircle);

    // left eyes
    canvas.drawCircle(Offset(130, 150), 20, headCircle);
    canvas.drawCircle(Offset(130, 150), 20, lineCircle);

    // //right eyes
    // canvas.drawCircle(Offset(260, 150), 20, headCircle);
    // canvas.drawCircle(Offset(260, 150), 20, lineCircle);

    //nose
    canvas.drawPath(arc1, lineCircle);
    canvas.drawPath(arc2, lineCircle);

    //mouse
    canvas.drawLine(Offset(250, 150), Offset(300, 150), lineCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
