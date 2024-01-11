import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwer_english/controllers/index_controller.dart';
import 'widgets/card.dart';

enum Direction { left, right, center }

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final IndexController controller = Get.find<IndexController>();
  Direction swipeDirection = Direction.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: swipeDirection == Direction.left
            ? const Color(0xff00bcd4).withOpacity(0.4)
            : swipeDirection == Direction.right
                ? const Color(0xffff5722).withOpacity(0.4)
                : Colors.white,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: const Center(
                  child: Text('왼쪽, 오른쪽 또는 터치', style: TextStyle(fontSize: 20))),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              child: AppinioSwiper(
                cardCount: controller.phrases.length,
                onSwipeBegin: (previousIndex, targetIndex, activity) {
                  setState(() {
                    print('$swipeDirection'); // TODO: 여기서 이벤트 처리
                    swipeDirection = Direction.center;
                  });
                },
                onCardPositionChanged: (position) {
                  if (position.offset.dx < -50) {
                    setState(() {
                      swipeDirection = Direction.left;
                    });
                  } else if (position.offset.dx > 50) {
                    setState(() {
                      swipeDirection = Direction.right;
                    });
                  } else {
                    setState(() {
                      swipeDirection = Direction.center;
                    });
                  }
                },
                cardBuilder: (BuildContext context, int index) {
                  return FlipCard(
                    front: CustomCard(
                        phrase: controller.phrases[index],
                        status: CardStatus.front),
                    back: CustomCard(
                        phrase: controller.phrases[index],
                        status: CardStatus.back),
                  );
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Center(
                child: swipeDirection == Direction.left
                    ? const Text('완벽히 알았어요!', style: TextStyle(fontSize: 20))
                    : swipeDirection == Direction.right
                        ? const Text('다음에 한 번 더 볼게요!',
                            style: TextStyle(fontSize: 20))
                        : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
