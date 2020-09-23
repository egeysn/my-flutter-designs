import 'package:animations/animate%20container/animate_container.dart';
import 'package:animations/animate_page_route/animate_page_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: //Opacity 
      AnimatedContainerScreen(),
      // AnimatePageScreen(),
    );
  }
}
