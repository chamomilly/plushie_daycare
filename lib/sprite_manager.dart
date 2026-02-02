import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpriteManager {
  static final SpriteManager _instance = SpriteManager._internal();
  factory SpriteManager() => _instance;
  SpriteManager._internal();

  ui.Image? _andrewSprite;
  ui.Image? _chilliSprite;

  Future<void> loadSprites() async {
    final andrewPicture = await _loadSprite('assets/images/andrew_sprite.png');
    _andrewSprite = await andrewPicture.toImage(32, 32);

    final chilliPicture = await _loadSprite('assets/images/chilli_sprite.png');
    _chilliSprite = await chilliPicture.toImage(32, 32);
  }

  Future<Picture> _loadSprite(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final fullImage = await decodeImageFromList(bytes);

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    canvas.drawImageRect(
      fullImage,
      Rect.fromLTWH(0, 0, 32, 32),
      Rect.fromLTWH(0, 0, 32, 32),
      Paint()..filterQuality = FilterQuality.none,
    );
    return recorder.endRecording();
  }

  ui.Image? get andrewSprite => _andrewSprite;
  ui.Image? get chilliSprite => _chilliSprite;

  ui.Image? getSpriteFromName(String name) {
    if (name.toLowerCase() == 'andrew') {
      return _andrewSprite;
    } else {
      return _chilliSprite;
    }
  }
}
