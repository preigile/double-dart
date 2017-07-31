// Copyright (c) 2017, preigile. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:math';

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

//import 'src/todo_list/todo_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)

class AppComponent {
  var game;

  AppComponent() {
    this.game = new Game();
    print('Player ${game.playerName} is playing');
  }

  void getPoint() {
    game.play();
  }
}

class Target {
  Map<String, int> nums;

  Target() {
    nums = new Map();
    nums['0'] = 0;
    nums['25'] = 25;
    nums['50'] = 50;
    initNums();
  }

  initNums() {
    for (var i = 1; i < 21; i++) {
      nums['${i}'] = i;
      nums['double_${i}'] = i * 2;
      nums['triple_${i}'] = i * 3;
    }
  }
}

class Player {
  String name;

  Player(this.name) {}
}

class Game {
  var target;
  var player1;
  var player2;

  int randomNum;
  int score;
  int step;
  String playerName;

  Game() {
    this.target = new Target();
    this.player1 = new Player('Vasya');
    this.player2 = new Player('Jora');

    step = 0;
    score = 0;
    playerName = this.player1.name;
  }

  getPoint() {
    randomNum =
        target.nums.values.elementAt(new Random().nextInt(target.nums.length));
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
