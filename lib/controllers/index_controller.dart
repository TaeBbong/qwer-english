import 'package:get/get.dart';
import 'package:qwer_english/helpers/sqlite_helper.dart';
import 'package:qwer_english/models/phrase.dart';
import 'package:qwer_english/services/main_service.dart';

class IndexController extends GetxController {
  List<Phrase> phrases = [];

  void fetchData(List<Phrase> data) {
    phrases = data;
  }

  void updateData(Phrase phrase) async {
    final service = Get.find<MainService>();
    await SqliteHelper(db: service.db).update(phrase.copyWith(isDone: true));
  }
}
