import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starr_front_end/helpers/style.dart';

class BottomText extends StatelessWidget {
  final String mainText;
  final String secondaryText;

  const BottomText({Key key, this.mainText, this.secondaryText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
          TextSpan(text: "$mainText \n"),
          TextSpan(
              text: secondaryText,
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white)),
        ],
            style: GoogleFonts.roboto(
                fontSize: 58,
                fontWeight: FontWeight.bold,
                color: Colors.white)));
  }
}
