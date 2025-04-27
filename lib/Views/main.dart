import 'package:flottiecook/Views/auth/login.dart';
import 'package:flottiecook/Views/auth/register.dart';
import 'package:flutter/material.dart';
import 'onboarding/splash_screen.dart';
import 'package:get/get.dart';

void main() => runApp(MainApp());
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(  
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreenWidget(),
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
      ],
    );
  }
}
 