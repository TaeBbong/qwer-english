import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'widgets/card.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: AppinioSwiper(
              cardCount: 10,
              onSwipeBegin: (previousIndex, targetIndex, activity) {},
              cardBuilder: (BuildContext context, int index) {
                return FlipCard(
                  front: CustomCard(index: index, status: CardStatus.front),
                  back: CustomCard(index: index, status: CardStatus.back),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
