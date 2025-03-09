import 'package:flutter/material.dart';

class CircleHolderWidget extends StatelessWidget {
  final double radius;
  final IconData iconData;
  final Color iconColor;
  final Color backgroundColor;
  final double iconSize;
  final VoidCallback onPressed;
  const CircleHolderWidget({
    super.key,
    required this.radius,
    required this.iconData,
    required this.iconSize,
    required this.onPressed,
    this.iconColor = Colors.white,
    this.backgroundColor = const Color(0XFF202020),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
