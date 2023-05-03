import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/questions_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF8160EF),
                    Color(0xFF5927FF),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 65),
              width: 138,
              height: 118,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(59),
                  topRight: Radius.circular(59),
                ),
              ),
              child: SvgPicture.asset(
                'images/logo.svg',
                width: 61,
                height: 78,
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 220,
                left: 20,
              ),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Bit\nCuckoo',
                      style: GoogleFonts.rubik(
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: '\nCollect your bit coins',
                          style: GoogleFonts.rubik(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'How Cuckoo will help?',
                    style: GoogleFonts.rubik(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 425, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const QuestionsText(
                    text: 'Cuckoo will help you to buy/sell your bit coins',
                  ),
                  const SizedBox(height: 35),
                  const QuestionsText(
                      text: 'Cuckoo will help you to set the price tracker'),
                  const SizedBox(height: 35),
                  const QuestionsText(text: 'Cuckoo is faster smart & Sweet '),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Enter your Mobile Number                                                                  ',
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        height: 56,
                        width: 53,
                        child: Center(
                          child: Text(
                            '91',
                            style: GoogleFonts.rubik(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFE1DDF8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 56,
                        width: 235,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '   98412012345',
                            style: GoogleFonts.rubik(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFE1DDF8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF37E39F),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                        ),
                        height: 56,
                        width: 66,
                        child: const Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
