import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:oslob_app/2_application/core/theme.dart';
import 'package:oslob_app/2_application/screens/splash/splash_page.dart';

class OslobApp extends StatelessWidget {
  const OslobApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashScreenProvider(),
      );
    });
  }
}
