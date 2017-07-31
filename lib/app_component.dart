// Copyright (c) 2017, preigile. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

import 'package:double_dart/src/game/game_component.dart';

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

