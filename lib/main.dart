import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_test/components/game_manager.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flame.device.fullScreen();
  Flame.device.setLandscape();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      debugShowCheckedModeBanner: false,
      home: GameWidget(
        game: GameManager(),
      ),
    );
  }
}
