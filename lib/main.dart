import 'package:flutter/material.dart';
import 'package:ga_eats_app/ga_eats_app.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const GaEatsApp(),
  ));
}
