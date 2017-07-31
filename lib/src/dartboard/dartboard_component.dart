import 'package:angular2/angular2.dart';

@Injectable()
class Dartboard {
  Map<String, int> nums;

  Dartboard() {
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
