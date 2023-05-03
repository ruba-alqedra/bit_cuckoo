import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Center(
          child: Container(
            width: 166,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(59),
            ),
            child: SvgPicture.asset(
              'images/logo.svg',
              width: 61,
              height: 78,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }
}
