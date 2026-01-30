import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_app.dart';
import 'Core/routing/app_router.dart';

Future<void> main() async {
  setupGetIt();
  // to avoid .sp bug in flutter screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
