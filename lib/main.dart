import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shield_gpt/dashboard_landing_screen/view/dashboard_landing_screen.dart';
import 'package:shield_gpt/global_controller/app_scroll_behaviour.dart';
import 'package:shield_gpt/initial_file_upload_screen/controller/initial_file_upload_screen_controller.dart';
import 'package:shield_gpt/loader_screen/view/loader_screen.dart';
import 'package:shield_gpt/login_screen/controller/login_screen_controller.dart';
import 'package:shield_gpt/stats_screen/view/stats_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => InitialFileUploadScreenController(),
        ),
      ],
      child: const ShieldGPTApp(),
    ),
  );
}

class ShieldGPTApp extends StatelessWidget {
  const ShieldGPTApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: 'Shield GPT',
      // TODO uncomment this after the refinement
      // home: const LoginScreen(),
      home: const StatsScreen(),
    );
  }
}
