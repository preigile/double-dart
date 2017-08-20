// Copyright (c) 2017, preigile. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:double_dart/src/dartboard.dart';
import 'package:double_dart/src/game.dart';
import 'package:double_dart/src/participants.dart';
import 'package:double_dart/src/player.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app.css'],
  templateUrl: 'app.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class App {

  Game _game;

  App() {
    init();
  }

  void init() {
    Dartboard dartboard = new Dartboard.simple();
    int hitsLimit = 3;

    _game = new Game(
        new Participants.couple(
            new Player.named(
                "Vasya",
                dartboard),
            new Player.named(
                "Jora",
                dartboard)),
        hitsLimit);

    print('Ready to play! ${_game.playing().name()}\'s turn.');
  }

  void turn() {
    _game.turn();
  }
}

