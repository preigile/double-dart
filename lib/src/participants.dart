import 'dart:collection';

import 'package:double_dart/src/player.dart';

class Participants {

  Queue<Player> _players;

  Participants.group(Iterable<Player> players) :
        this(new DoubleLinkedQueue.from(players));

  Participants.couple(Player first, Player second) :
        this(new DoubleLinkedQueue.from([first, second]));

  Participants(this._players);

  Player current() {
    return _players.first;
  }

  void rotate() {
    _players.addLast(_players.removeFirst());
  }
}