import 'package:flutter/material.dart';
import 'package:starr_front_end/helpers/style.dart';

import '../pages/artists/artists.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: bgSecondary,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Looking for a opportunity',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(),
              ),
              InkWell(
                onTap: () {
                  Navigator.restorablePushNamed(context, Artists.routeName);
                },
                child: Text(
                  'Looking for artists',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2020 | Starr',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
