import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/helpers/spacing.dart';
import 'package:flutter_application_1/Core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin:  EdgeInsets.only(bottom: 16.0.h),
           // decoration:  BoxDecoration(
           //   borderRadius: BorderRadius.circular(16.r),
           // ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    width: 110.w,
                    height: 120.h,
                    'https://static.vecteezy.com/system/resources/thumbnails/026/375/249/small/ai-generative-portrait-of-confident-male-doctor-in-white-coat-and-stethoscope-standing-with-arms-crossed-and-looking-at-camera-photo.jpg',
                    fit: BoxFit.cover,
                  )
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr. John Doe',
                      style: TextStyles.font18DarkBlueBold,
                      ),
                      verticalSpace(5),
                      Text('Degree  | 01020545120121',
                      style: TextStyles.font12GreyMedium,
                      ),
                      verticalSpace(5),
                      Text('Email@gmail.com',
                      style: TextStyles.font12GreyMedium,
                      ),
                    ],
                  ),
                )

              ],
            ),
          );
        },
      ),
    );
  }
}