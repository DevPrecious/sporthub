import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sporthub/pages/onboard/onbaording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after a 3-second delay
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const OnbaordingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/splash.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            scale: 1.8,
          ),
        ),
      ),
    );
  }
}
