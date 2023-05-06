import 'package:flutter/material.dart';
import 'package:starr_front_end/widgets/style/film.dart';

class TallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(children: [
      Center(
        child: Container(
          height: 400,
          width: screenSize.width,
          color: Colors.black12,
          child: FilmRect(
            color: Colors.white,
            strokeWidth: 50,
            gap: 40,
          ),
        ),
      ),
    ]);
  }
}
