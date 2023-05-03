import 'package:final_ucas/widgets/spalsh_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SplashWidget(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 23,
                right: 23,
                top: 21,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Bit Cuckoo',
                      style: GoogleFonts.nunito(
                          color: const Color(0xFF5927FF),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: '\nHi, SIGNIN!',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const TextFieldAuth(
                    pass: false,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const TextFieldAuth(
                    icon: Icons.remove_red_eye_outlined,
                    pass: true,
                  ),
                  const SizedBox(
                    height: 92,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'New Member?',
                          style: GoogleFonts.nunito(
                              color: const Color(0xFF5927FF),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: '\nSIGN UP!',
                              style: GoogleFonts.nunito(
                                color: const Color(0xFFAF8344),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 57.5,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(164, 55),
                          backgroundColor: const Color(0xFF8160EF),
                        ),
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 79,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, '/on_boarding_screen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Start Now!',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_outlined,
                          size: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
