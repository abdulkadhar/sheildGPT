import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class RippleContainer extends StatelessWidget {
  final double size;
  final Color rippleColor;
  const RippleContainer({
    super.key,
    this.size = 100,
    this.rippleColor = const Color.fromARGB(8, 0, 0, 0),
  });

  @override
  Widget build(BuildContext context) {
    return RippleAnimation(
      color: rippleColor,
      delay: const Duration(seconds: 1),
      repeat: true,
      minRadius: 100,
      maxRadius: 150,
      ripplesCount: 1,
      duration: const Duration(milliseconds: 6 * 300),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Image.asset('assets/images/ripple_logo.png'),
      ),
    );
  }
}
