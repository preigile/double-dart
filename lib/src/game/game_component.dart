import 'dart:math';

import 'package:double_dart/src/dartboard/dartboard_component.dart';
import 'package:double_dart/src/player/player_component.dart';

class Game {
  var dartboard;
  var player1;
  var player2;

  int randomNum;
  int score;
  int step;
  String playerName;

  Game() {
    this.dartboard = new Dartboard();
    this.player1 = new Player('Vasya');
    this.player2 = new Player('Jora');

    step = 0;
    score = 0;
    playerName = this.player1.name;
  }

  getPoint() {
    randomNum =
        dartboard.nums.values.elementAt(new Random().nextInt(dartboard.nums.length));
    return randomNum;
  }

  getScore() {
    if (step < 3) {
      step++;
      score += randomNum;
    } else {
      player();
      step = 1;
      score = randomNum;
    }

    print('step ${step}, you get ${randomNum} score');
    print('Your common score is ${score}!');
  }

  player() {
    if (playerName == player1.name) {
      playerName = player2.name;
    } else {
      playerName = player1.name;
    }
    print('Player ${playerName} is playing');
  }

  play() {
    getPoint();
    getScore();
  }
}
