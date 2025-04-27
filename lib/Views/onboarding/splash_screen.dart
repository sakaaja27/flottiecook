import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'boardingscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedSplashScreenWidget extends StatelessWidget {
  const AnimatedSplashScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 4000,
      splash: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFFE997C6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/icon/splashanimation.json',
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Text(
                'FlottieCook',
                style: GoogleFonts.agbalumo(fontSize: 40),
              ),
            ],
          ),
        ),
      ),
      nextScreen:BoardingOne(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.transparent,
      splashIconSize: double.infinity,
    );
  }
}
