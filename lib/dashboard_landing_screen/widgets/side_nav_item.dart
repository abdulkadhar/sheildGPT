import 'package:flutter/material.dart';

class SideNavItem extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final VoidCallback onPressed;
  const SideNavItem({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.iconSize = 25,
    this.iconColor = const Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        iconData,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
