import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SGPTButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  const SGPTButton({
    super.key,
    required this.label,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 0.3,
          ),
        ),
      ),
      onPressed: onPress,
      child: Text(
        label,
        style: GoogleFonts.quicksand(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }
}
