import 'dart:async';

import 'package:get/get.dart';
import 'package:qwer_english/controllers/index_controller.dart';
import 'package:qwer_english/env.dart';
import 'package:qwer_english/models/phrase.dart';

class MainService extends GetxService {
  List<Phrase> testData = [
    Phrase(
      id: 1,
      kor: '너 정말 멋있구나',
      eng: 'You are so cool',
      isDone: false,
    ),
    Phrase(
      id: 2,
      kor: '커피 한 모금만 마셔도 돼?',
      eng: 'Can I have a sip of your coffee?',
      isDone: false,
    ),
    Phrase(
      id: 3,
      kor: '무슨 일 있어?',
      eng: 'What is on your mind?',
      isDone: false,
    ),
    Phrase(
      id: 4,
      kor: '지금 전화 가능해?',
      eng: 'Is this a good time?',
      isDone: false,
    ),
    Phrase(
      id: 5,
      kor: '괜찮아질거야',
      eng: 'I will be alright.',
      isDone: false,
    ),
    Phrase(
      id: 6,
      kor: '여긴 어쩐일이야?',
      eng: 'What brings you here?',
      isDone: false,
    ),
    Phrase(
      id: 7,
      kor: '왜 이렇게 오래 걸렸어?',
      eng: 'What took you so long?',
      isDone: false,
    ),
    Phrase(
      id: 8,
      kor: '난 비틀즈를 정말 좋아해',
      eng: 'I have soft spot for Beatles.',
      isDone: false,
    ),
  ];
  Environ environ = Environ();

  Future<void> onAppLoad() async {
    final controller = Get.find<IndexController>();
    if (environ.env == Env.test) {
      await Future.delayed(const Duration(seconds: 3), () {
        controller.fetchData(testData);
      });
    } else {
      //
    }
  }
}
