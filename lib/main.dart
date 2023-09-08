import 'package:flutter/material.dart';
import 'package:oslob_app/2_application/app/oslob_app.dart';
import 'package:oslob_app/2_application/core/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const OslobApp(),
  ));
}
