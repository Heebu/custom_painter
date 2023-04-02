import 'package:custom_painter/CustomPaint/body.dart';
import 'package:custom_painter/CustomPaint/clock_view.dart';
import 'package:flutter/material.dart';

import 'CustomPaint/head_paint.dart';
import 'CustomPaint/rectangle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Time App'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ClockView(),
                RectanglePaint(),
              ],
            ),
            const HeadPaint(),
            const Body(),
          ],
        ),
      ),
    );
  }
}
