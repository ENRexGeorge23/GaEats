import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:gap/gap.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.height,
    required this.widgth,
  });

  final double height;
  final double widgth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: height * 0.07,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  GaEatsTheme.lightOnPrimaryColor,
                  GaEatsTheme.lightPrimaryColor
                ], // Replace with your desired colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: FilledButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.transparent),
                  padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Login',
                      style: GaEatsTheme.lightTheme.textTheme.displayLarge
                          ?.copyWith(
                        color: GaEatsTheme.lightTextColorPrimary,
                        fontSize: height * 0.023,
                      ),
                    ),
                    const Gap(5),
                    const Icon(
                      Icons.arrow_forward,
                      color: GaEatsTheme.lightTextColorPrimary,
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
