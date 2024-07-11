import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/resources/images.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:gap/gap.dart';

class LoginScreenLoaded extends StatelessWidget {
  const LoginScreenLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                        Images.loginOval,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: themedata.brightness == Brightness.dark
                            ? AppTheme.darkTheme.textTheme.displayLarge
                            : AppTheme.lightTheme.textTheme.displayLarge,
                      ),
                      Text(
                        'Please sign in to continue',
                        style: AppTheme.lightTheme.textTheme.displaySmall,
                      )
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      height: 60,
                    ),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF4477C2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
