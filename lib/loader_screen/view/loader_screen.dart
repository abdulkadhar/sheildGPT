import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lottie/analyzer-animation.json',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "The network is getting analyzed. Please do wait for some time.",
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '  90 %',
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          // SECTION - Logo Section
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/ripple_logo_white.png',
                    height: 40,
                    width: 60,
                  ),
                  Text(
                    "Shield GPT",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
