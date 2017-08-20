import 'package:double_dart/src/participants.dart';
import 'package:double_dart/src/player.dart';

class Game {

  Participants _participants;
  int _hitsLimit;

  Game(this._participants, this._hitsLimit);

  Player playing() {
    return _participants.current();
  }

  void turn() {
    Player player = _participants.current();

    if (_hitsLimit == player.hitsCount()) {
      rotate(player);

      return;
    }

    hit(player);
  }

  void rotate(Player player) {
    print('Your common score is ${player.score()}!');

    _participants.rotate();

    print('Next player is ${playing().name()}');
  }

  void hit(Player player) {
    int hit = player.hit();

    print('${player.name()} get ${hit} score');
  }
}
