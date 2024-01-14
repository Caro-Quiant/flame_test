import 'dart:async';
import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

import '/components/game_manager.dart';

class Runner extends SpriteAnimationComponent with HasGameRef<GameManager> {
  @override
  FutureOr<void> onLoad() async {
    var spriteSheet = SpriteSheet(
        image: await Images().load('Run.png'), srcSize: Vector2(32, 32));
    animation = spriteSheet.createAnimation(row: 0, stepTime: 0.1);

    size = Vector2(64, 64);

    y = gameRef.size.toRect().height * 0.76;
  }

  void move(Vector2 delta) {
    position.add(delta);
  }
}
