import 'package:double_dart/src/participants.dart';
import 'package:double_dart/src/player.dart';

class Game {

  Participants _participants;
  int _step;

  Game(this._participants, this._step);

  Player playing() {
    return _participants.current();
  }

  void turn() {
    Player player = _participants.current();

    if (_step < 3) {
      int hit = player.hit();
      _step++;
      print('${player.name()} get ${hit} score');
    } else {
      print('Your common score is ${player.score()}!');

      _participants.rotate();
      _step = 0;

      print('Next player is ${playing().name()}');
    }
  }
}
