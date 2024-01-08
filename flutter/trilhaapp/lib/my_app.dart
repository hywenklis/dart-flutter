import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
          textTheme: GoogleFonts.pacificoTextTheme()),
      home: MyHomePage(
          title: Text(
        'My App',
        style: GoogleFonts.roboto(),
      )),
    );
  }
}
