import 'package:crypto_design/constants.dart';
import 'package:crypto_design/views/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Crypto price tracker",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: backgroundPrimary,
      ),
      home: const HomePage(),
    );
  }
}
