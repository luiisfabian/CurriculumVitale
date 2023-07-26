import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key, required this.colors,required this.radius});
  final double radius;
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
        final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      width: radius*2,
      height: radius*2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(colors: colors, begin: Alignment.topRight, end: Alignment.bottomLeft)
      ),
    );
  }
}