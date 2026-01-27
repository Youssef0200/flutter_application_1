import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/login/ui/login_screen.dart ';
import 'package:flutter_application_1/features/onboarding/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
         return MaterialPageRoute(builder: (_)=> const OnboardingScreen());
       case Routes.loginScreen:
         return MaterialPageRoute(builder: (_)=> const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_)=> const Scaffold(
              body: Center(
                child: Text('No Route Found'),
              ),
            )
        );
    }
  }
}
