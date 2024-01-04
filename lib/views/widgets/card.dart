import 'package:flutter/material.dart';

enum CardStatus { front, back }

class CustomCard extends StatelessWidget {
  // TODO: Phrase phrase;
  // TODO: Get Random Gradient Colorset
  int index;
  CardStatus status;

  CustomCard({required this.index, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(index.toString()),
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
        color: Colors.green,
      ), // TODO: 그라데이션, 여러 색상 조합 셋 만들어놓기
    );
  }
}
