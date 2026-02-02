import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/helpers/spacing.dart';
import 'package:flutter_application_1/features/home/widgets/doctors_Speciality_list_view.dart';
import 'package:flutter_application_1/features/home/widgets/doctors_Speciality_see_all.dart';
import 'package:flutter_application_1/features/home/widgets/doctors_blue_containr.dart';
import 'package:flutter_application_1/features/home/widgets/doctors_list_view.dart';
import 'package:flutter_application_1/features/home/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainr(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
