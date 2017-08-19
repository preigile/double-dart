// Copyright (c) 2017, preigile. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:double_dart/src/dartboard.dart';
import 'package:double_dart/src/game.dart';
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
    _game = new Game.scored(
        new Player.named("Vasya",
            new Dartboard(new Map())),
        new Player.named("Jora",
            new Dartboard(new Map())));

    print('Ready to play! ${_game.playing().name()}\'s turn.');
  }

  void turn() {
    _game.turn();
  }
}

