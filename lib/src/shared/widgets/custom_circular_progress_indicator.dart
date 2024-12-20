import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final Color color;
  final double size;
  final double strokeWidth;
  const CustomCircularProgressIndicator(
      {super.key,
      this.color = Colors.white,
      this.size = 10,
      this.strokeWidth = 3});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        color: color,
      ),
    );
  }
}
