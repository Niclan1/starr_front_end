import 'package:flutter/material.dart';
import 'package:starr_front_end/helpers/responsive.dart';
import 'package:starr_front_end/helpers/style.dart';
import 'package:starr_front_end/pages/home/widgets/wide.dart';
import 'package:starr_front_end/pages/home/widgets/tall.dart';
import 'package:starr_front_end/widgets/navbar_desktop.dart';
import 'package:starr_front_end/widgets/drawer.dart';
import 'package:starr_front_end/widgets/mobile_navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
