import 'package:double_dart/src/player.dart';

class Game {

  Player _firstPlayer;
  Player _secondPlayer;
  Player _current;

  int _step;
  int _commonScore;

  Game.scored(Player firstPlayer, Player secondPlayer) :
        this(firstPlayer, secondPlayer, 0, 0);

  Game(this._firstPlayer, this._secondPlayer, this._step, this._commonScore) {
    this._current = _firstPlayer;
  }

  void turn() {
    if (_step < 3) {
      _score();
      _step++;
    } else {
      _rotate();
      _step = 0;
      _commonScore = 0;

      print('Next player is ${playing().name()}');
    }
  }

  Player playing() {
    return _current;
  }

  void _rotate() {
    if (_current == _firstPlayer) {
      _current = _secondPlayer;
    } else {
      _current = _firstPlayer;
    }
  }

  void _score() {
    _commonScore += _current.score();

    print('Your common score is ${_commonScore}!');
  }
}
