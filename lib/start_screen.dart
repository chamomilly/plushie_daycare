import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:plushie_daycare_flutter/app_router.dart';
import 'package:plushie_daycare_flutter/sprite_manager.dart';

@RoutePage()
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: CheckerboardPainter(), size: Size.infinite),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .25),
                Text(
                  'Welcome to Plushie Daycare!',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  'Choose your plushie:',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _PlushieButton('Andrew'),
                    _PlushieButton('Chilli'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PlushieButton extends StatelessWidget {
  final String name;
  const _PlushieButton(this.name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(DaycareRoute(petName: name));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: FutureBuilder(
                future: SpriteManager().loadSprites(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    final sprite = SpriteManager().getSpriteFromName(name);
                    if (sprite != null) {
                      return RawImage(
                        image: sprite,
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.none,
                      );
                    }
                  }
                  return Center(child: Text(name));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(name, style: Theme.of(context).textTheme.labelMedium),
          ),
        ],
      ),
    );
  }
}

class CheckerboardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const tileSize = 16.0;
    final paint = Paint();

    for (double x = 0; x < size.width; x += tileSize) {
      for (double y = 0; y < size.height; y += tileSize) {
        paint.color = ((x / tileSize + y / tileSize) % 2 == 0)
            ? Color(0xFFFFFAF5)
            : Color(0xFFF5EBE1);
        canvas.drawRect(Rect.fromLTWH(x, y, tileSize, tileSize), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
