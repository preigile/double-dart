import 'package:double_dart/src/dartboard.dart';

class Player {

  Dartboard _dartboard;

  String _name;
  int _score;

  Player.named(String name, Dartboard _dartboard) :
        this(name, _dartboard, 0);

  Player(this._name, this._dartboard, this._score, );

  String name() {
    return _name;
  }

  int score() {
    _score = _dartboard.randomScore();
    print('${_name} get ${_score} score');
    
    return _score;
  }
}

