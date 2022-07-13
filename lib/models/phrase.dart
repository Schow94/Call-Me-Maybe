import 'dart:math';

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

/*
  - Encapsulate Random Phrase logic in a Model to keep random logic separate from UI
*/
class Phrase {
  final Random random = Random();
  final int randNum;
  String _randPhrase = 'Unlikely but possible';

  // Constructor - Initialize randNum to 0
  Phrase({this.randNum = 0});

  /*
    - Get a random # & use it to pick a random phrase from textOptions
  */
  void randomize() {
    var randNum = random.nextInt(textOptions.length);
    _randPhrase = textOptions[randNum];
  }

  /*
    - Getter: Returns randPhrase
  */
  String get randPhrase => _randPhrase;
}
