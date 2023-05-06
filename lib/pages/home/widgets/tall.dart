import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starr_front_end/helpers/style.dart';
import 'package:starr_front_end/widgets/button.dart';

class TallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              constraints: BoxConstraints(maxWidth: 450),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Get noticed for ",
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text: "who",
                          style: GoogleFonts.roboto(color: active)),
                      TextSpan(
                          text: " you are.",
                          style: TextStyle(color: Colors.white)),
                    ],
                    style: GoogleFonts.roboto(
                        fontSize: 28, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 550),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 40),
                    blurRadius: 80)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search for any opportunity...",
                      border: InputBorder.none),
                ),
              )
            ],
          ),
        ),
        CustomButton(
          text: "Get started",
        )
      ],
    );
  }
}
