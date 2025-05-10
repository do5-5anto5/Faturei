import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/animated_logo.dart';

// Responsibilities: time control and navigation to home

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          Get.offNamed('/auth');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(
      child: AnimatedSplashLogo()
    ))));
  }
}