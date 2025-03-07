import 'package:flutter/material.dart';
import 'package:shield_gpt/login_screen/widgets/ripple_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: const Center(
                child: RippleContainer(
                  size: 200,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
