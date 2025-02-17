import 'package:bank_app/screens/start.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Essentials
const Color accentColor = Color(0xFF05BE71);
const Color borderColor = Color(0xFFECECEC);
const Color backgroundColor = Colors.white;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: backgroundColor,
      systemNavigationBarColor: backgroundColor,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}
