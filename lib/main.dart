import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/di/dependency_injection.dart';
import 'doc_app.dart';
import 'Core/routing/app_router.dart';

void main() {
   setupGetIt();   
  runApp(DocApp(appRouter: AppRouter()));
}