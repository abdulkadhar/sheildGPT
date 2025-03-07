import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

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
              child: Center(
                child: RippleAnimation(
                  color: const Color.fromARGB(8, 0, 0, 0),
                  delay: const Duration(seconds: 6),
                  repeat: true,
                  minRadius: 100,
                  maxRadius: 150,
                  ripplesCount: 1,
                  duration: const Duration(milliseconds: 6 * 300),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
