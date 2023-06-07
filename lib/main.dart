import 'package:flutter/material.dart';
import 'package:games_wishlist/screens/tabs.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

final darktheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(9, 198, 249, 1),
      brightness: Brightness.dark),
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: const TextStyle().copyWith(
      color: Colors.white60,
      fontSize: 15,
    ),
  ),
  iconTheme: const IconThemeData().copyWith(
    color: Colors.white60,
  )
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darktheme,
      home: const TabScreen(),
    );
  }
}
