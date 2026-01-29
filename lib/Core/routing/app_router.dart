import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/di/dependency_injection.dart';
import 'package:flutter_application_1/features/home/ui/home_screen.dart';
import 'package:flutter_application_1/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_application_1/features/login/ui/login_screen.dart ';
import 'package:flutter_application_1/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
        
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}
