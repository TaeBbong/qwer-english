import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwer_english/services/main_service.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    final controller = Get.find<MainService>();
    controller.onAppLoad().then((value) {
      Get.toNamed('/index');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Center(
        child: Text(
          'qwer',
          style: TextStyle(fontSize: 40, fontFamily: 'TommySoftBold'),
        ),
      ),
    );
  }
}
