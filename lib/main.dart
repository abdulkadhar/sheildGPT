import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shield_gpt/global_controller/app_scroll_behaviour.dart';
import 'package:shield_gpt/login_screen/controller/login_screen_controller.dart';
import 'package:shield_gpt/login_screen/view/login_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginScreenController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: 'Shield GPT',
      home: const LoginScreen(),
    );
  }
}
