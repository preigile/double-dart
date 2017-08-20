import 'package:double_dart/src/player.dart';

class Game {

  Player _firstPlayer;
  Player _secondPlayer;
  Player _current;
  int _step;

  Game.scored(Player firstPlayer, Player secondPlayer) :
        this(firstPlayer, secondPlayer, 0);

  Game(this._firstPlayer, this._secondPlayer, this._step) {
    this._current = _firstPlayer;
  }

  Player playing() {
    return _current;
  }

  void turn() {
    if (_step < 3) {
      var hit = _current.hit();
      _step++;
      print('${_current.name()} get ${hit} score');
    } else {
      print('Your common score is ${_current.score()}!');

      _rotate();
      _step = 0;

      print('Next player is ${playing().name()}');
    }
  }

  void _rotate() {
    if (_current == _firstPlayer) {
      _current = _secondPlayer;
    } else {
      _current = _firstPlayer;
    }
  }
}
