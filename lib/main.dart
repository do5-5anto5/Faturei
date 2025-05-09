import 'package:faturei/pages/auth.dart';
import 'package:faturei/pages/homepage.dart';
import 'package:faturei/pages/second.dart';
import 'package:faturei/pages/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binds/main.dart';
import 'firebase_options.dart';

late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);

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
            name: '/auth',
            page: () => const AuthPage()
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
