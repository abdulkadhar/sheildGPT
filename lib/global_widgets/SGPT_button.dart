import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SGPTButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  final bool isLoading;
  final String loadingLabel;
  const SGPTButton({
    super.key,
    required this.label,
    required this.onPress,
    this.isLoading = false,
    this.loadingLabel = '',
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
      // TODO Uncomment this once the work is done
      // onPressed: isLoading ? null : onPress,
      onPressed: onPress,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // NOTE - Ternary operator for switching the label
            isLoading ? loadingLabel : label,
            style: GoogleFonts.quicksand(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          if (isLoading)
            const SizedBox(
              width: 20,
            ),
          if (isLoading)
            const SizedBox(
              height: 12,
              width: 12,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            )
        ],
      ),
    );
  }
}
