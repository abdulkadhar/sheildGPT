import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/circle_holder_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/side_nav_item.dart';

class DashboardLandingScreen extends StatelessWidget {
  const DashboardLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
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
                // ProfilePictureWidget(
                //   onPressed: () {},
                //   radius: 45,
                // ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // SECTION - Bottom main content
            Row(
              children: [
                Container(
                  width: 80,
                  height: MediaQuery.of(context).size.height * 0.85,
                  decoration: BoxDecoration(
                    color: const Color(0XFF0F112C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      // SECTION AI ball
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.bolt,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // SECTION Divider
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Divider(
                          color: Colors.white,
                          thickness: 0.2,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SideNavItem(
                        iconData: Icons.dashboard,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      SideNavItem(
                        iconData: Icons.trending_up,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      SideNavItem(
                        iconData: Icons.search,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      SideNavItem(
                        iconData: Icons.settings,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // SECTION Divider
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Divider(
                          color: Colors.white,
                          thickness: 0.2,
                        ),
                      ),
                      const Spacer(),
                      SideNavItem(
                        iconData: Icons.exit_to_app,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
