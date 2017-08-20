import 'dart:math';

class Dartboard {

  Map<String, int> _nums;

  Dartboard.simple() :
      this(new Map());

  Dartboard(this._nums);

  int randomScore() {
    if(_nums.isEmpty) {
      _init();
    }

    int randomInt = new Random()
        .nextInt(_nums.length);

    return _nums.values.elementAt(randomInt);
  }

  void _init() {
    _nums['0'] = 0;
    _nums['25'] = 25;
    _nums['50'] = 50;

    for (var i = 1; i < 21; i++) {
      _nums['${i}'] = i;
      _nums['double_${i}'] = i * 2;
      _nums['triple_${i}'] = i * 3;
    }
  }
}
