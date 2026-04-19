// ignore_for_file: unused_local_variable

import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class DaycareGame extends FlameGame with HasCollisionDetection {
  final String petName;
  late SpriteAnimationComponent pet;

  DaycareGame({required this.petName});

  @override
  Color backgroundColor() => const Color(0x00000000);

  late SpriteAnimation idleAnimation;
  late SpriteAnimation walkAnimation;

  double speed = 50; // pixels per second
  int direction = 1; // 1 = right, -1 = left
  double actionTimer = 0;
  bool isWalking = false;

  @override
  Future<void> onLoad() async {
    final spriteSheet = await images.load('andrew_sprite.png');

    idleAnimation = SpriteAnimation.fromFrameData(
      spriteSheet,
      SpriteAnimationData.sequenced(
        amount: 6,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ),
    );

    walkAnimation = SpriteAnimation.fromFrameData(
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
      position: Vector2(size.x / 2 - 64, size.y / 2),
      anchor: Anchor.center,
    );

    add(pet);
  }

  @override
  void update(double dt) {
    super.update(dt);

    actionTimer -= dt;

    // Pick a new action when timer runs out
    if (actionTimer <= 0) {
      isWalking = (Random().nextBool());

      if (isWalking) {
        direction = Random().nextBool() ? 1 : -1;
        pet.animation = walkAnimation;
      } else {
        pet.animation = idleAnimation;
      }

      actionTimer = 2 + Random().nextDouble() * 3; // 2–5 seconds
    }

    // Movement
    if (isWalking) {
      pet.x += direction * speed * dt;

      // Flip sprite depending on direction
      pet.scale.x = direction == 1 ? 1 : -1;

      // Keep inside screen bounds
      final halfWidth = pet.width / 2;
      if (pet.x - halfWidth <= 0) {
        pet.x = halfWidth;
        direction = 1;
      } else if (pet.x + halfWidth >= size.x) {
        pet.x = size.x - halfWidth;
        direction = -1;
      }
    }
  }
}
