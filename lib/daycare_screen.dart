import 'package:auto_route/auto_route.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:plushie_daycare_flutter/daycare_game.dart';
import 'package:plushie_daycare_flutter/start_screen.dart';

@RoutePage()
class DaycareScreen extends StatelessWidget {
  final String petName;
  const DaycareScreen({super.key, required this.petName});

  @override
  Widget build(BuildContext context) {
    final game = DaycareGame(petName: petName);

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: CheckerboardPainter(), size: Size.infinite),
          GameWidget(game: game),
        ],
      ),
    );
  }
}
