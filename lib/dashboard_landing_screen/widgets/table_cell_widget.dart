import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableCellWidget extends StatelessWidget {
  final String label;
  final bool isHeader;

  const TableCellWidget({
    super.key,
    required this.label,
    this.isHeader = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: isHeader ? const Color(0xFF182A54) : const Color(0xFFFAFAFA),
          border: isHeader
              ? null
              : Border.all(
                  color: const Color(0xFF182A54),
                  width: 0.4,
                ),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.quicksand(
              color: isHeader ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
