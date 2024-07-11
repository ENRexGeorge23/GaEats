import 'package:flutter/material.dart';
import 'package:ga_eats_app/dependencies_injection.dart';
import 'package:ga_eats_app/ga_eats_app.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:provider/provider.dart';

void main() async {
  /// Ensure the widgets binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize the dependencies
  await init();

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const GaEatsApp(),
  ));
}
