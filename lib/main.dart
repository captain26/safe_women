import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safe_women/screen/home_screen.dart';
import 'package:safe_women/services/location_service.dart';

import 'screen/numbers/numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<LocationService>(
      create: (context) => LocationService(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            '/numberScreen' : (BuildContext context) => new NumbersPage()
          },
          home: HomeScreen(),
        ),
    );

  }
}
