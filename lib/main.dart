import 'package:flutter/material.dart';
import 'package:games_wishlist/screens/categories.dart';
import 'package:games_wishlist/screens/tabs.dart';  
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const App());
}

final darktheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
  textTheme: GoogleFonts.latoTextTheme(),
);

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: darktheme,
      home: const TabScreen(),
    );
  }
}