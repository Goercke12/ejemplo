import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorSecundario;
  final double grosorPrimario;

  RadialProgress(
      {@required this.porcentaje,
      this.colorPrimario = Colors.blue,
      this.colorSecundario = Colors.grey,
      this.grosorSecundario = 4,
      this.grosorPrimario = 10});

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  double porcentajeAnterior;

  @override
  void initState() {
    porcentajeAnterior = widget.porcentaje;
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward(from: 0.0);

    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: _MiRadialProgress(
                (widget.porcentaje - diferenciaAnimar) +
                    (diferenciaAnimar * controller.value),
                widget.colorPrimario,
                widget.colorSecundario,
                widget.grosorSecundario,
                widget.grosorPrimario),
          ),
          //child: Text('${widget.porcentaje}'),
        );
      },
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;
  final Color colorPrimario;
  final Color colorSecunadrio;
  final double grosorSecundario;
  final double grosorPrimario;

  _MiRadialProgress(this.porcentaje, this.colorPrimario, this.colorSecunadrio,
      this.grosorSecundario, this.grosorPrimario);

  @override
  // Circulo completado
  void paint(Canvas canvas, Size size) {
    final Rect rect = new Rect.fromCircle(center: Offset(1, 1), radius: 180);
    final Gradient gradiente = new LinearGradient(
        colors: <Color>[Colors.red, Colors.purple, Colors.yellow]);
    final paint = new Paint()
      ..strokeWidth = grosorSecundario
      ..color = colorSecunadrio
      ..style = PaintingStyle.stroke;

    final Offset center = new Offset(size.width * 0.5, size.height / 2);
    final double radio = min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);

    //Arco

    final paintArco = new Paint()
      ..strokeWidth = grosorPrimario
      //..color = colorPrimario
      ..shader = gradiente.createShader(rect)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // Parte que se debe ir llenando
    double arcAngle = 2 * pi * (porcentaje / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
