import 'package:flutter/material.dart';
import 'package:starr_front_end/pages/artists/artists.dart';
import 'package:starr_front_end/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starr',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case Artists.routeName:
                return Artists();
              default:
                return HomePage();
            }
          },
        );
      },
    );
  }
}
