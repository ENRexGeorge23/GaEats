import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ga_eats_app/core/theme/theme_config.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/bloc/login_bloc.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/screens/view_states/login_screen_error.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/screens/view_states/login_screen_loaded.dart';

class LoginScreenProvider extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) {
        final loginBloc = LoginBloc();
        loginBloc.add(LoginRequestedEvent());
        return loginBloc;
      },
      child: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GaEatsTheme.lightTheme.scaffoldBackgroundColor,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginLoadingState) {
            return const CircularProgressIndicator.adaptive();
          } else if (state is LoginLoadedState) {
            return const LoginScreenLoaded();
          } else {
            return const LoginScreenError();
          }
        },
      ),
    );
  }
}
