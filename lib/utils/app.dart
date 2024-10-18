import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/features/authentication/screen/onBoarding/onboarding.dart';
import 'package:flutterecommerceapp/utils/themes/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home:const onBoardingScreen(),
    );
  }
}