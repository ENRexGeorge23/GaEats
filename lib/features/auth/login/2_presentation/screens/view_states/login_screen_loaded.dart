import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/resources/images.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/widgets/forgot_password_text_button.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/widgets/google_and_phone_sign_up_buttons.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/widgets/login_button.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/widgets/login_form_fields.dart';
import 'package:gap/gap.dart';

class LoginScreenLoaded extends StatefulWidget {
  const LoginScreenLoaded({super.key});

  @override
  State<LoginScreenLoaded> createState() => _LoginScreenLoadedState();
}

class _LoginScreenLoadedState extends State<LoginScreenLoaded> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
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
                          ? GaEatsTheme.darkTheme.textTheme.displayLarge
                          : GaEatsTheme.lightTheme.textTheme.displayLarge,
                    ),
                    Text(
                      'Please sign in to continue',
                      style: GaEatsTheme.lightTheme.textTheme.displaySmall,
                    )
                  ],
                ),
              ),
            ),
            const Gap(20),
            GoogleAndPhoneSignInButtons(height: height),
            const Gap(15),
            Text(
              'or',
              style: GaEatsTheme.lightTheme.textTheme.displaySmall,
            ),
            const Gap(15),
            LoginFormFields(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController),
            const Gap(15),
            const ForgotPasswordTextButton(),
            const Gap(15),
            LoginButton(height: height, widgth: width),
            Spacer(),
            Text.rich(
              TextSpan(
                text: 'Don\'t have an account? ',
                style: GaEatsTheme.lightTheme.textTheme.displaySmall,
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    text: 'Create one',
                    style:
                        GaEatsTheme.lightTheme.textTheme.displaySmall?.copyWith(
                      color: GaEatsTheme.lightPrimaryColor,
                    ),
                  )
                ],
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
