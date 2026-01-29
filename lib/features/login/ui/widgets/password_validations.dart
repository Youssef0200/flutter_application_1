import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/helpers/spacing.dart';
import 'package:flutter_application_1/Core/theming/colors.dart';
import 'package:flutter_application_1/Core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidaitonRow('At least one lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidaitonRow('At least one uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidaitonRow('At least one special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidaitonRow('At least one number', hasNumber),
        verticalSpace(2),
        buildValidaitonRow('At least 8 characters Long', hasMinLength),

      ],
    );
  }

  Widget buildValidaitonRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManger.grey),
        horizontalSpace(6),
        Text(text, style: TextStyles.font13DarkBlueRegular.copyWith(
          decoration: hasValidated? TextDecoration.lineThrough : TextDecoration.none,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? ColorsManger.grey : ColorsManger.darkBlue,
        )),
      ],
    );
  }
}
