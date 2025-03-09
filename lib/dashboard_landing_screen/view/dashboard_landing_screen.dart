import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/circle_holder_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/profile_picture_widget.dart';

class DashboardLandingScreen extends StatelessWidget {
  const DashboardLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          // SECTION - Header navigation
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/images/ripple_logo_white.png',
                width: 50,
                height: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Shield GPT",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              CircleHolderWidget(
                radius: 45,
                iconData: Icons.notifications_none,
                iconSize: 16,
                iconColor: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CircleHolderWidget(
                radius: 45,
                iconData: Icons.chat_bubble,
                iconSize: 16,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              ProfilePictureWidget(
                onPressed: () {},
                radius: 45,
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          // SECTION - Bottom main content
          Row()
        ],
      ),
    );
  }
}
