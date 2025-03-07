import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/global_widgets/SGPT_Text_Form_Field.dart';
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
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN IN",
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SgptTextFormField(
                        isPassword: true,
                        labelText: 'Email',
                        errorText: 'Error',
                      )
                    ],
                  ),
                ),
              ),
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
