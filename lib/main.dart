import 'package:flutter_application_1/screens/main_sceen.dart';

import 'screens/start_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/models/movie_model.dart';
import 'package:flutter_application_1/models/category_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoriesModel()),
        ChangeNotifierProvider(create: (_) => MoviesModel()),
        ChangeNotifierProvider(create: (_) => MainScreen()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const StartScreen(),
    );
  }
}
