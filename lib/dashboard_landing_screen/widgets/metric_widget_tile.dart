import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetricWidgetTile extends StatelessWidget {
  final String label;
  final int count;
  final VoidCallback onPress;
  const MetricWidgetTile({
    super.key,
    required this.label,
    required this.count,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: (MediaQuery.of(context).size.height * 0.77) / 4,
          decoration: BoxDecoration(
            color: const Color(0XFF0F112C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Center(
                child: AnimatedDigitWidget(
                  duration: const Duration(seconds: 3),
                  value: count,
                  textStyle: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 22,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
