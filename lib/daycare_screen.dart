import 'package:auto_route/auto_route.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plushie_daycare_flutter/bloc/daycare_cubit.dart';
import 'package:plushie_daycare_flutter/daycare_game.dart';
import 'package:plushie_daycare_flutter/start_screen.dart';
import 'package:plushie_daycare_flutter/widgets/stats.dart';

@RoutePage()
class DaycareScreen extends StatelessWidget {
  final String petName;
  const DaycareScreen({super.key, required this.petName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DaycareCubit>(
      create: (context) => DaycareCubit(),
      child: _DaycareScreenView(petName: petName),
    );
  }
}

class _DaycareScreenView extends StatelessWidget {
  final String petName;
  const _DaycareScreenView({required this.petName});

  @override
  Widget build(BuildContext context) {
    final game = DaycareGame(petName: petName);
    final cubit = context.read<DaycareCubit>();

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: CheckerboardPainter(), size: Size.infinite),
          GameWidget(game: game),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Andrew',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      SizedBox(height: 20),
                      Stats(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton.extended(
                          heroTag: 'feed_button',
                          onPressed: () => cubit.feed(),
                          icon: Icon(Icons.fastfood),
                          label: Text('Feed'),
                        ),
                        FloatingActionButton.extended(
                          heroTag: 'play_button',
                          onPressed: () => cubit.play(),
                          icon: Icon(Icons.pets),
                          label: Text('Play'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
