import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: InkWell(
          onTap: () {},
          child: Text(
            'Forgot Password?',
            style: GaEatsTheme.lightTheme.textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
