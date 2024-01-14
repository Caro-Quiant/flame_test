import 'dart:async';

import 'package:flame/components.dart';

import '/components/game_manager.dart';

class Background extends SpriteComponent with HasGameRef<GameManager> {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('Background.png');
    height = gameRef.size.toRect().height;
    position = Vector2(0, 0);
  }
}
