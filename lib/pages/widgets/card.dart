import 'package:flutter/material.dart';
import 'package:qwer_english/constants/colorset.dart';

enum CardStatus { front, back }

class CustomCard extends StatelessWidget {
  // TODO: Phrase phrase;
  // TODO: Get Random Gradient Colorset

  String front = "너 정말 멋있다~";
  String back = "You are so cool~";

  int index;
  CardStatus status;

  CustomCard({super.key, required this.index, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: const Offset(5, 7),
          )
        ],
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
        gradient: Gradients.sets[index],
      ),
      child: Text(
        status == CardStatus.front ? front : back,
        style: status == CardStatus.front
            ? const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'NanumGothicBold',
              )
            : const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'TommySoftBold',
              ),
      ),
    );
  }
}
