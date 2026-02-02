// ignore_for_file: unused_local_variable

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class DaycareGame extends FlameGame with HasCollisionDetection {
  final String petName;
  late SpriteAnimationComponent pet;

  DaycareGame({required this.petName});

  @override
  Color backgroundColor() => const Color(0x00000000);

  @override
  Future<void> onLoad() async {
    final spriteSheet = await images.load('andrew_sprite.png');

    final idleAnimation = SpriteAnimation.fromFrameData(
      spriteSheet,
      SpriteAnimationData.sequenced(
        amount: 6,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ),
    );

    final walkAnimation = SpriteAnimation.fromFrameData(
      spriteSheet,
      SpriteAnimationData.sequenced(
        amount: 8,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 32 * 2),
      ),
    );

    final sleepAnimation = SpriteAnimation.fromFrameData(
      spriteSheet,
      SpriteAnimationData.sequenced(
        amount: 8,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 32 * 6),
      ),
    );

    final playAnimation = SpriteAnimation.fromFrameData(
      spriteSheet,
      SpriteAnimationData.sequenced(
        amount: 8,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 32 * 3),
      ),
    );

    pet = SpriteAnimationComponent(
      animation: idleAnimation,
      size: Vector2(128, 128),
      position: Vector2(size.x / 2 - 64, size.y / 2 - 64),
    );

    add(pet);
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Game loop logic here
  }
}
