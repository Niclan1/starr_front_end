import 'package:flutter/material.dart';
import 'package:starr_front_end/helpers/style.dart';

Widget mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: active,
        ),
        onPressed: () {
          key.currentState.openDrawer();
        },
      ),
      title: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Image.asset("assets/images/starr-filled.png", height: 42),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Text("Starr",
                  style: TextStyle(
                      fontSize: 36, fontFamily: 'LoftyGoals', color: active)),
            ),
          ],
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: bgColor,
    );
