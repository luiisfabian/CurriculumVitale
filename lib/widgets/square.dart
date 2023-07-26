import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  Square({super.key, required this.colors,required this.radius});
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
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(colors: colors, begin: Alignment.topRight, end: Alignment.bottomLeft)
      ),
    
    );
  }
}