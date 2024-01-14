import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/src/gestures/events.dart';
import 'package:flame_test/components/Common/runner.dart';

import '/components/background.dart';

class GameManager extends FlameGame with PanDetector {
  late Runner _runner;

  @override
  Future<void>? onLoad() {
    add(Background());
    _runner = Runner();
    add(_runner);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    print(info.delta.global);
    _runner.move(info.delta.global);
  }
}
