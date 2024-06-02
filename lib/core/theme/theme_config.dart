import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }
}

class AppTheme {
  AppTheme._();

  // *****************
  // light colors
  // *****************

  static const Color _lightPrimaryColor = Color(0xFFFFC500);
  static const Color _lightPrimaryVariantColor = Color(0xFFFABB50);
  static const Color _lightOnPrimaryColor = Color(0xFFFAD388);
  static const Color _lightTextColorPrimary = Colors.black;
  static const Color _lightTextColorSecondary = Color(0xFF989494);
  static const Color _appbarColorLight = Color(0xFFFFC500);
  static const Color _lightBackgroundColor = Color(0xFFFEFCEE);

  // *****************
  // dark colors
  // *****************

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColorDark = Colors.blueGrey.shade800;
  static const Color _iconColor = Colors.white;
  static const Color _accentColor = Color.fromRGBO(74, 217, 217, 1);

// ------------------------------------------------------------------------------

  // *****************
  // Text Style - light
  // *****************
  static const TextStyle _displayLargeText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Public Sans",
      fontSize: 30,
      fontWeight: FontWeight.bold);

  static const TextStyle _displayMediumText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Public Sans",
      fontSize: 25,
      fontWeight: FontWeight.bold);

  static const TextStyle _displaySmallText = TextStyle(
      color: _lightTextColorSecondary,
      fontFamily: "Public Sans",
      fontSize: 16,
      fontWeight: FontWeight.w500);

  static const TextStyle _bodyLargeText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Public Sans",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _displayLargeText,
    displayMedium: _displayMediumText,
    displaySmall: _displaySmallText,
    bodyLarge: _bodyLargeText,
  );

  // *****************
  // Text Style - dark
  // *****************
  static final TextStyle _darkThemeHeadingTextStyle =
      _displayLargeText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkThemeBodyeTextStyle =
      _bodyLargeText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkThemeHeadingTextStyle,
    bodyLarge: _darkThemeBodyeTextStyle,
  );

  // ------------------------------------------------------------------------------

  // *****************
  // Theme light
  // *****************

  static final ThemeData lightTheme = ThemeData(
      primaryColor: _lightPrimaryColor,
      splashColor: _lightPrimaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: _lightBackgroundColor,
      appBarTheme: const AppBarTheme(
          color: _appbarColorLight,
          iconTheme: IconThemeData(color: _iconColor)),
      colorScheme: const ColorScheme.light(
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        secondary: _accentColor,
        primaryContainer: _lightPrimaryVariantColor,
      ),
      textTheme: _lightTextTheme,
      bottomAppBarTheme: const BottomAppBarTheme(color: _appbarColorLight));

  // *****************
  // Theme dark
  // *****************

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorDark,
          iconTheme: const IconThemeData(color: _iconColor)),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _accentColor,
        onPrimary: _darkOnPrimaryColor,
        primaryContainer: _darkPrimaryVariantColor,
      ),
      textTheme: _darkTextTheme,
      bottomAppBarTheme: BottomAppBarTheme(color: _appbarColorDark));
}
