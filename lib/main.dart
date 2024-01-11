import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:qwer_english/bindings/initial_bindings.dart';
import 'package:qwer_english/pages/splash_page.dart';

import 'pages/index_page.dart';

void main() {
  InitialBinding().dependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashPage()),
        GetPage(name: '/index', page: () => IndexPage()),
      ],
    );
  }
}
