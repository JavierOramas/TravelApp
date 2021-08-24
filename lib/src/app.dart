import 'package:flutter/material.dart';
import 'package:test/src/pages/home_page.dart';

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: HomeWidget()),
      theme: ThemeData(
        backgroundColor: Colors.black26,
        bottomAppBarColor: Colors.black12,
        // secondaryHeaderColor: Colors.black54,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
    );
  }
}
