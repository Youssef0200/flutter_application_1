import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children:[
          TextSpan(
              text:'Already have an account yet?',
              style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text:' Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ]
      ),

  
    );
  }
}