import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/helpers/extensions.dart';
import 'package:flutter_application_1/Core/routing/routes.dart';
import 'package:flutter_application_1/Core/theming/colors.dart';
import 'package:flutter_application_1/Core/theming/styles.dart';
import 'package:flutter_application_1/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_application_1/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManger.primary),
              ),
            );
          },
          success: (loginResponse) {
            context.pop(); // Close the loading dialog
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop(); // Close the loading dialog
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: TextStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('Got it', style: TextStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
