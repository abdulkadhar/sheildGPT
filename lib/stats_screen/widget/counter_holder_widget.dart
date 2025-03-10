import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterHolderWidget extends StatelessWidget {
  final double radius;
  final int count;
  const CounterHolderWidget({
    super.key,
    required this.count,
    this.radius = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: const Color(0xFF143064),
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        count.toString(),
        style: GoogleFonts.quicksand(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
