import 'package:flutter/material.dart';
import 'dart:math';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  var rand = Random().nextInt(4);

  final textOptions = [
    'Unlikely but possible',
    "There's a chance",
    "Umm I guess we'll have to wait and see",
    "Only time will tell",
    "I'm confident they will",
    "Absolutely, 100%",
    "I feel like they should, but don't take my word for it",
    "If you believe it, it will happen"
  ];

  @override
  Widget build(BuildContext context) {
    String text = textOptions[rand];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Call Me...Maybe?'),
        GestureDetector(
          onTap: clickBtn,
          child: Text('Ask a question..tap fo the answer'),
        ),
        Text(text),
      ],
    );
  }

  void clickBtn() {
    setState(() {
      rand = Random().nextInt(textOptions.length);
    });

    print(rand);
  }
}
