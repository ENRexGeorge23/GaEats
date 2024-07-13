import 'package:flutter/material.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:gap/gap.dart';

class LoginFormFields extends StatelessWidget {
  const LoginFormFields({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.account_circle_outlined),
                labelText: 'Email Address',
                labelStyle: GaEatsTheme.lightTheme.textTheme.displaySmall,
              ),
            ),
            const Gap(15),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_person_rounded,
                ),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
