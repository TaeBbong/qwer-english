import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'views/index_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => IndexPage()),
      ],
    );
  }
}
