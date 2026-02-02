import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/theming/colors.dart';
import 'package:flutter_application_1/Core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18DarkBlueBold),
            Text('How Are You Today?', style: TextStyles.font12GreyRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManger.moreLighterGray,
          child: SvgPicture.asset('assets/svgs/Alert.svg'),
        ), 
      ],
    );
  }
}
