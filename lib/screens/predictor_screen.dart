import 'package:flutter/material.dart';
import 'dart:math';

import 'package:project3/widgets/random_text.dart';
import 'package:project3/models/phrase.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final phrase = Phrase();

  @override
  Widget build(BuildContext context) {
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
            onTap: () => clickBtn(),
            child: Text(
              'Ask a question..tap for the answer',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 50),
          RandomText(text: phrase.randPhrase),
        ],
      ),
    );
  }

  void clickBtn() => setState(() => phrase.randomize());
}
