import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/routes/router_config.dart';
import 'package:provider/provider.dart';

import 'package:ga_eats_app/core/theme/theme_config.dart';

class GaEatsApp extends StatelessWidget {
  const GaEatsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp.router(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: routes,
      );
    });
  }
}
