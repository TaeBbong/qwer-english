import 'package:get/get.dart';
import 'package:qwer_english/models/phrase.dart';

class IndexController extends GetxController {
  List<Phrase> phrases = [];

  void fetchData(List<Phrase> data) {
    phrases = data;
  }

  // TODO: isDone => True via sqlite_helper update
  void updateData(int id) {}
}
