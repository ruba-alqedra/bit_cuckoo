import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsText extends StatelessWidget {
  const QuestionsText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xFF44E4A5),
          radius: 6,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.rubik(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
