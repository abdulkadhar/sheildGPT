import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/global_widgets/SGPT_Text_Form_Field.dart';
import 'package:shield_gpt/login_screen/widgets/ripple_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: PageView(
                controller: controller,
                pageSnapping: false,
                children: [
                  // SECTION - Login Screen Section
                  Center(
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
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SgptTextFormField(
                            labelText: 'Email',
                            onChanged: (emailValue) {},
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SgptTextFormField(
                            labelText: 'Password',
                            isPassword: true,
                            onChanged: (passwordValue) {},
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 20,
                              ),
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.3,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "SIGN IN",
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          InkWell(
                            onTap: () {
                              controller.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease,
                              );
                            },
                            child: Text(
                              'CREATE ACCOUNT',
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SECTION Sign up form
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN UP",
                            style: GoogleFonts.quicksand(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SgptTextFormField(
                            labelText: 'Email',
                            onChanged: (emailValue) {},
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SgptTextFormField(
                            labelText: 'Password',
                            isPassword: true,
                            onChanged: (passwordValue) {},
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 20,
                              ),
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.3,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "CREATE ACCOUNT",
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          InkWell(
                            onTap: () {
                              controller.animateToPage(
                                controller.initialPage,
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease,
                              );
                              controller.initialPage;
                            },
                            child: Text(
                              'SIGN IN',
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
          ),
        ],
      ),
    );
  }
}
