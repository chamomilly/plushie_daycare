import 'package:flutter/material.dart';
import 'package:plushie_daycare_flutter/sprite_manager.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
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
              children: [_PlushieButton('Andrew'), _PlushieButton('Chilli')],
            ),
          ],
        ),
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
      onTap: () {},
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
