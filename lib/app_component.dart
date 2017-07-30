// Copyright (c) 2017, preigile. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

import 'dart:math';

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
  var play;

  AppComponent() {
    this.play = new Play();
//    print(play);
  }

  void getPoint () {
    print(play.getPoint());
  }
}

class Target {
  Map<String, int> nums;

  Target() {
    nums = new Map();
    nums['25'] = 25;
    nums['50'] = 50;
    initNums();
  }

  initNums() {
    for(var i = 1; i < 21; i++) {
      nums['${i}'] = i;
      nums['double_${i}'] = i * 2;
      nums['triple_${i}'] = i * 3;
    }
  }
}

class Play {
  var target;
  int randomNum;
  int score;
  int step;

  Play() {
    this.target = new Target();
    step = 0;
  }
  
  getPoint() {
    if(step < 3) {
      step++;
    } else {
      step = 1;
    }
    print('step ${step}');
    randomNum = target.nums.values.elementAt(new Random().nextInt(target.nums.length));
    return randomNum;
  }
}
