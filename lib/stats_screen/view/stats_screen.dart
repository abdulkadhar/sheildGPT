import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/circle_holder_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/selected_file_widget.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/side_nav_item.dart';
import 'package:shield_gpt/initial_file_upload_screen/model/file_model.dart';
import 'package:shield_gpt/stats_screen/widget/option_selection_widget.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

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
                  // SECTION Option Provider Section
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.82,
                      child: ListView(
                        children: [
                          // SECTION Row 1
                          Row(
                            children: [
                              OptionSelectionWidget(
                                title: 'Found credentials',
                                subtitle:
                                    'Explore identified plain text passwords or hashes for different authentication protocols.',
                                iconData: Icons.security,
                                count: 0,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'DNS Queries',
                                subtitle:
                                    'Explore DNS/NBNS/mDNS queries to DNS servers on world map.',
                                iconData: Icons.security,
                                count: 36,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'HTTP Communication',
                                subtitle:
                                    'Display HTTP requests, responses and transferring data.',
                                iconData: Icons.security,
                                count: 64,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'SMB Sniffer',
                                subtitle:
                                    'Investigate SMB announcements and discover information about installed OS features. Uncover NTLMv1/v2 hashes.',
                                iconData: Icons.security,
                                count: 64,
                                onPress: () {},
                              ),
                            ],
                          ),
                          //!SECTION
                          const SizedBox(
                            height: 10,
                          ),
                          // SECTION Row 2
                          Row(
                            children: [
                              OptionSelectionWidget(
                                title: 'ARP',
                                subtitle:
                                    'Contains link layer information about network communications. Aids in detecting network routers and identifying ARP spoofing attackers.',
                                iconData: Icons.security,
                                count: 3,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'Network Map',
                                subtitle:
                                    'Analyze IP communications between devices and the protocols used. Identify fingerprints such as the operating system and installed software.',
                                iconData: Icons.security,
                                count: 42,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'Open Ports',
                                subtitle:
                                    'Identify open TCP ports and their associated fingerprints in the captured traffic.',
                                iconData: Icons.security,
                                count: 11,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'SSL/TLS',
                                subtitle:
                                    'Retrieve information about SSL/TLS sessions, including client/server hello messages and certificate chains.',
                                iconData: Icons.security,
                                count: 11,
                                onPress: () {},
                              ),
                            ],
                          ),
                          //!SECTION
                          const SizedBox(
                            height: 10,
                          ),
                          // SECTION Row 3
                          Row(
                            children: [
                              OptionSelectionWidget(
                                title: 'Images',
                                subtitle:
                                    'View images discovered in HTTP data.',
                                iconData: Icons.security,
                                count: 0,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'Telnet',
                                subtitle: 'Show Telnet sessions data.',
                                iconData: Icons.security,
                                count: 42,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'FTP',
                                subtitle: 'Show FTP sessions data.',
                                iconData: Icons.security,
                                count: 11,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'SSDP Announcements ',
                                subtitle:
                                    'Contains announcements of services running on network devices using the SSDP protocol.',
                                iconData: Icons.security,
                                count: 11,
                                onPress: () {},
                              ),
                            ],
                          ),
                          //!SECTION
                          const SizedBox(
                            height: 10,
                          ),
                          // SECTION Row 3
                          Row(
                            children: [
                              OptionSelectionWidget(
                                title: 'Connections',
                                subtitle:
                                    'Visualize IP connections, displaying endpoints and data volume transfer on a world map.',
                                iconData: Icons.security,
                                count: 72,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'DNS, DHCP and LDAP Servers',
                                subtitle:
                                    'Detect DNS, DHCP and LDAP servers from intercepted network traffic.',
                                iconData: Icons.security,
                                count: 2,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'Ethernet Devices',
                                subtitle:
                                    'Identify Ethernet devices and detect the used Ethernet broadcast addresses.',
                                iconData: Icons.security,
                                count: 3,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'WiFi',
                                subtitle:
                                    'View information about access points, clients, connection requests, and discovered WPA2 handshakes.',
                                iconData: Icons.security,
                                count: 0,
                                onPress: () {},
                              ),
                            ],
                          ),
                          //!SECTIONconst SizedBox(
                          const SizedBox(
                            height: 10,
                          ),
                          // SECTION Row 3
                          Row(
                            children: [
                              OptionSelectionWidget(
                                title: 'SIP',
                                subtitle:
                                    'Explore details of SIP communications and authentication data.',
                                iconData: Icons.security,
                                count: 0,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OptionSelectionWidget(
                                title: 'Documents',
                                subtitle:
                                    'Found office documents in PDF, MS Word, MS Excel, RTF and other formats.',
                                iconData: Icons.security,
                                count: 2,
                                onPress: () {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                          //!SECTION
                        ],
                      ),
                    ),
                  ),

                  //!SECTION
                  const SizedBox(
                    width: 10,
                  ),
                  // SECTION - Analytics section
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
