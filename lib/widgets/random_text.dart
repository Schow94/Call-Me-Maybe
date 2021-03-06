import 'package:flutter/material.dart';

class RandomText extends StatelessWidget {
  final String text;
  const RandomText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
