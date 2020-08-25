import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.green[900],
    );
  }
}

class BordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.green[900],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70))),
    );
  }
}

class Diagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderDiagonalPainter(),
        ));
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades

    lapiz.color = Colors.green[900];
    lapiz.style = PaintingStyle.fill; //.fill relleno
    lapiz.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Triangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderTriangularPainter(),
        ));
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades

    lapiz.color = Colors.green[900];
    lapiz.style = PaintingStyle.fill; //.fill relleno
    lapiz.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.moveTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Pico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderPicoPainter(),
        ));
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades

    lapiz.color = Colors.green[900];
    lapiz.style = PaintingStyle.fill; //.fill relleno
    lapiz.strokeWidth = 10;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Curvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderCurvo(),
        ));
  }
}

class _HeaderCurvo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades

    lapiz.color = Colors.green[900];
    lapiz.style = PaintingStyle.fill; //.fill relleno
    lapiz.strokeWidth = 10;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.40, size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    //path.lineTo(size.width, size.height * 0.2);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Waves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderWeaves(),
        ));
  }
}

class _HeaderWeaves extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades

    lapiz.color = Colors.blue[900];
    lapiz.style = PaintingStyle.fill; //.fill relleno stroke sin relleno
    lapiz.strokeWidth = 10;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.77, size.height * 0.1, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.28, size.height * 0.91,
        size.width * 0.5, size.height * 0.83);

    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.74, size.width, size.height * 0.99);
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.99);
    path.lineTo(0, size.height);

    // path.quadraticBezierTo(
    //size.width * 0.5, size.height * 0.6, size.width, size.height * 0.95);

    //path.lineTo(0, size.height * 0.20);
    //path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
    //  size.width * 0.5, size.height * 0.2);
    //path.quadraticBezierTo(
    //  size.width * 0.75, size.height * 0.1, size.width, size.height * 0.2);
    //path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.5);

    //path.lineTo(size.width * 0.5, size.height * 0.2);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WavesGradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderWeavesGradiente(),
        ));
  }
}

class _HeaderWeavesGradiente extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(80.0, 180.0), radius: 180);

    final Gradient gradiente = new LinearGradient(
      //begin: Alignment.topCenter,
      //end: Alignment.bottomCenter,
      colors: <Color>[
        Color.fromRGBO(36, 94, 93, 1),
        Color.fromRGBO(93, 192, 93, 1),
      ],
    );
    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //propiedades

    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill; //.fill relleno stroke sin relleno
    lapiz.strokeWidth = 10;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.77, size.height * 0.1, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.28, size.height * 0.91,
        size.width * 0.5, size.height * 0.83);

    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.74, size.width, size.height * 0.99);
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.99);
    path.lineTo(0, size.height);

    // path.quadraticBezierTo(
    //size.width * 0.5, size.height * 0.6, size.width, size.height * 0.95);

    //path.lineTo(0, size.height * 0.20);
    //path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
    //  size.width * 0.5, size.height * 0.2);
    //path.quadraticBezierTo(
    //  size.width * 0.75, size.height * 0.1, size.width, size.height * 0.2);
    //path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.5);

    //path.lineTo(size.width * 0.5, size.height * 0.2);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
