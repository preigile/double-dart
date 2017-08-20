import 'package:double_dart/src/dartboard.dart';

class Player {

  Dartboard _dartboard;
  List<int> _hits;
  String _name;

  Player.named(String name, Dartboard _dartboard) :
        this(name, _dartboard, new List<int>());

  Player(this._name, this._dartboard, this._hits);

  String name() {
    return _name;
  }

  int hit() {
    var hit = _dartboard.randomScore();
    
    _hits.add(hit);

    return hit;
  }

  int hitsCount() {
    return _hits.length;
  }

  int score() {
    return _hits.reduce((a, b) => a + b);
  }
}

