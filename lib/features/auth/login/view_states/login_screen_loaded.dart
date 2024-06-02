import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';

class LoginScreenLoaded extends StatelessWidget {
  const LoginScreenLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Image.asset(
                      'assets/images/login/oval.png',
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 600,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Login',
                          style: themedata.brightness == Brightness.dark
                              ? AppTheme.darkTheme.textTheme.displayLarge
                              : AppTheme.lightTheme.textTheme.displayLarge,
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Please sign in to continue',
                              style: AppTheme.lightTheme.textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
