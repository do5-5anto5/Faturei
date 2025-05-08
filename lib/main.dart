import 'package:faturei/pages/homepage.dart';
import 'package:faturei/pages/second.dart';
import 'package:faturei/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binds/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(
            name: '/splash',
            page: () => const SplashScreen()
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          binding: SampleBind()
        ),
        GetPage(
          name: '/second',
          page: () => const Second(),
          binding: SampleBind()
        ),
      ],
    );
  }
}
