import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shield_gpt/global_widgets/SGPT_button.dart';

class InitialFileUploadScreen extends StatelessWidget {
  const InitialFileUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: DottedBorder(
              dashPattern: const [15, 5],
              color: Colors.white,
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  color: const Color(0XFF202020),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/lottie/file_upload_animation.json',
                      height: 200,
                      width: 200,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Please do upload the PCAP file to get analyzed",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SGPTButton(
                      label: 'Analyze',
                      onPress: () {},
                    )
                  ],
                ),
              ),
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
