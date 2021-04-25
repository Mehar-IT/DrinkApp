import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_widgets/Scaffold.dart';

const Color myColor = Colors.cyan;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      home: Home(),
      theme: ThemeData(
        primarySwatch: myColor,
        // primarySwatch: Colors.red,
        textTheme: GoogleFonts.pacificoTextTheme(),
      ),
    );
  }
}
