import 'package:device_preview/device_preview.dart';
import 'package:financial_design/providers/transaction.dart';
import 'package:financial_design/screens/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  static const Map<int, Color> colorMap = {
    50: Color.fromRGBO(42, 54, 59, 0.1),
    100: Color.fromRGBO(42, 54, 59, 0.2),
    200: Color.fromRGBO(42, 54, 59, 0.3),
    300: Color.fromRGBO(42, 54, 59, 0.4),
    400: Color.fromRGBO(42, 54, 59, 0.5),
    500: Color.fromRGBO(42, 54, 59, 0.6),
    600: Color.fromRGBO(42, 54, 59, 0.7),
    700: Color.fromRGBO(42, 54, 59, 0.8),
    800: Color.fromRGBO(42, 54, 59, 0.9),
    900: Color.fromRGBO(42, 54, 59, 1.0),
  };

  static const MaterialColor _2A363B = MaterialColor(0xFF2A363B, colorMap);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Transactions>(
      create: (context) => Transactions(),
      child: MaterialApp(
        title: 'Financial Ui Design',
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder, // Add the builder here
        home: HomePageScreen(),
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().toString(),
          primarySwatch: _2A363B,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
