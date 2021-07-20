import 'package:flutter/material.dart';


class Paint_Wave extends StatelessWidget {
  final double container_height;
  Paint_Wave({
    this.container_height
  });
  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width,container_height),
      painter: CurvedPainter(),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red[400];
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    var path = Path();
    path.moveTo(0, size.height * 0.45);
    path.quadraticBezierTo(size.width * 0.05
        , size.height * 0.6,
        size.width * 0.5, size.height * 0.474);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.moveTo( size.width * 0.4, size.height * 0.5);

    path.quadraticBezierTo( size.width * 0.8, size.height * 0.39,
        size.width*1.0, size.height * 0.45);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}