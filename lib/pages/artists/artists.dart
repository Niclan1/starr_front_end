import 'package:flutter/material.dart';
import 'package:starr_front_end/helpers/responsive.dart';
import 'package:starr_front_end/helpers/style.dart';
import 'package:starr_front_end/pages/artists/widgets/tall.dart';
import 'package:starr_front_end/pages/home/widgets/wide.dart';
import 'package:starr_front_end/widgets/drawer.dart';
import 'package:starr_front_end/widgets/mobile_navbar.dart';
import 'package:starr_front_end/widgets/navbar_desktop.dart';

class Artists extends StatefulWidget {
  @override
  _Artitsts createState() => _Artitsts();
  static const routeName = '/Artists';
}

class _Artitsts extends State<Artists> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? mobileTopBar(scaffoldKey)
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: NavBar(),
              ),
        drawer: MobileMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: WideScreen(),
          smallScreen: TallScreen(),
        ));
  }
}
