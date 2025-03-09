import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetricWidgetTile extends StatelessWidget {
  final String label;
  const MetricWidgetTile({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              "Packets Count",
              style: GoogleFonts.quicksand(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
