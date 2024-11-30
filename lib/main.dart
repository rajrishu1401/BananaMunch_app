import 'package:flutter/material.dart';
import 'package:banana_munch/screens/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Updated color scheme
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFF2D300), // Banana Yellow
  primary: const Color(0xFFF2D300), // Banana Yellow
  secondary: const Color(0xFF8D6E4E), // Warm Brown (for chips)
  surface: const Color(0xFFF9F3D3), // Light Beige (background)
  onPrimary: Colors.black, // Text color for primary
  onSecondary: Colors.white, // Text color for secondary
  onSurface: Colors.black, // Text color for surface
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFF8D6E4E), // Darker brown for dark mode
  primary: const Color(0xFF8D6E4E), // Darker brown
  secondary: const Color(0xFFF2D300), // Bright yellow for contrast
  surface: const Color(0xFF2A1A06), // Dark brown for surface
  onPrimary: Colors.white,
  onSecondary: Colors.black,
  onSurface: Colors.white,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: kDarkColorScheme.primaryContainer,
        foregroundColor: kDarkColorScheme.onPrimaryContainer,
      ),
      cardTheme: CardTheme(
        color: kDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorScheme.primary,
          foregroundColor: kDarkColorScheme.onPrimary,
        ),
      ),
      textTheme: ThemeData.dark().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          color: kDarkColorScheme.onSecondaryContainer,
        ),
      ),
    ),
    theme: ThemeData.light().copyWith(
      colorScheme: kColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: kColorScheme.primary,
        foregroundColor: kColorScheme.onPrimary,
      ),
      cardTheme: CardTheme(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          color: kColorScheme.onSecondaryContainer,
        ),
      ),
    ),
    home: const SplashScreen(),
  ));
}
