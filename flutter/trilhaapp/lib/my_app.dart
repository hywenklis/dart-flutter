import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.blue),
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          textTheme: GoogleFonts.robotoTextTheme()),
      home: MyLoginPage(
        title: Text(
          'My Login Page',
          style: GoogleFonts.roboto(),
        ),
      ),
    );
  }
}
