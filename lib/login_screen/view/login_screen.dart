import 'package:flutter/material.dart';
import 'package:shield_gpt/asset_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.4,
              color: Colors.amber,
              child: Image.asset(
                AssetController.login_side_img,
                fit: BoxFit.fill,
              )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.6,
            color: Colors.red,
            child: const Center(
              child: Text(
                'Right Side',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
