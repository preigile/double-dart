// Copyright (c) 2017, preigile. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser.dart';
import 'package:double_dart/app_component.dart';

void main() {
//  bootstrap(AppComponent);
  print(new Target().nums);
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
      nums['double${i}'] = i * 2;
      nums['thrice${i}'] = i * 3;
    }
  }
}
