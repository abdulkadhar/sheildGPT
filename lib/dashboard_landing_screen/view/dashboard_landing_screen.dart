import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shield_gpt/dashboard_landing_screen/controller/dashboard_landing_screen_controller.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/circle_holder_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/metric_widget_tile.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/selected_file_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/side_nav_item.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/table_cell_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/table_row_full_widget.dart';
import 'package:shield_gpt/initial_file_upload_screen/model/file_model.dart';
import 'package:shield_gpt/initial_file_upload_screen/widget/file_upload_container.dart';

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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
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
                  SelectedFileWidget(
                    fileData: FileModel(
                      fileName: 'linked-1.pcap',
                      fileSize: 969,
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
            ),
            const SizedBox(
              height: 20,
            ),
            // SECTION - Bottom main content
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.82,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  // SECTION - Left Side Navigation Bar
                  Container(
                    width: 80,
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
                  ),
                  //!SECTION
                  const SizedBox(
                    width: 10,
                  ),
                  // SECTION AI Chat Bot Container
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0XFF0F112C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AI Analyzer",
                            style: GoogleFonts.quicksand(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Center(
                            child: Container(
                              height: 350,
                              width: 350,
                              decoration: BoxDecoration(
                                color: const Color(0xFF182A54),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0.4,
                                ),
                                borderRadius: BorderRadius.circular(300),
                              ),
                              child: Lottie.asset(
                                'assets/lottie/gradient_animation.json',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Text(
                              "Analyze the PCAP file with the power of AI",
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //!SECTION
                  const SizedBox(
                    width: 10,
                  ),
                  // SECTION - Analytics section
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // SECTION Row 1
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MetricWidgetTile(
                                    label: 'Total Packets',
                                    count: 2455,
                                    onPress: () {},
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  MetricWidgetTile(
                                    label: 'Hosts',
                                    count: 33,
                                    onPress: () {},
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  MetricWidgetTile(
                                    label: 'Links',
                                    count: 33,
                                    onPress: () {},
                                  ),
                                ],
                              ),

                              // SECTION Row 2
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MetricWidgetTile(
                                    label: 'Average Duration',
                                    count: 1833,
                                    onPress: () {},
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  MetricWidgetTile(
                                    label: 'Max Duration',
                                    count: 3345,
                                    onPress: () {},
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  MetricWidgetTile(
                                    label: 'Min Duration',
                                    count: 123,
                                    onPress: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0XFF0F112C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListView(
                              children: [
                                Text(
                                  "Packet Information",
                                  style: GoogleFonts.quicksand(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // SECTION - Table header section
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TableCellWidget(
                                      label: 'TimeStamp',
                                      isHeader: true,
                                    ),
                                    TableCellWidget(
                                      label: 'Protocol',
                                      isHeader: true,
                                    ),
                                    TableCellWidget(
                                      label: 'Sr. IP',
                                      isHeader: true,
                                    ),
                                    TableCellWidget(
                                      label: 'Sr. Port',
                                      isHeader: true,
                                    ),
                                    TableCellWidget(
                                      label: 'Ds. Ip',
                                      isHeader: true,
                                    ),
                                    TableCellWidget(
                                      label: 'Ds. Port',
                                      isHeader: true,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: List.generate(
                                    DashboardLandingScreenController
                                        .tableData.length,
                                    (index) => TableRowFullWidget(
                                      modelData:
                                          DashboardLandingScreenController
                                              .tableData[index],
                                    ),
                                  ),
                                )
                                //!SECTION
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
