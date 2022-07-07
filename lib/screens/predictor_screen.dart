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

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Call Me...Maybe?',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: clickBtn,
            child: Text(
              'Ask a question..tap for the answer',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 50),
          Text(
            text,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }

  void clickBtn() {
    setState(() {
      rand = Random().nextInt(textOptions.length);
    });

    print(rand);
  }
}
