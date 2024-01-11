import 'package:get/get.dart';
import 'package:qwer_english/services/main_service.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainService>(MainService(), permanent: true);
  }
}
