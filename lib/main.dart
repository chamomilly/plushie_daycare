import 'package:flutter/material.dart';
import 'package:plushie_daycare_flutter/app_router.dart';
import 'package:plushie_daycare_flutter/game.dart';
import 'package:plushie_daycare_flutter/theme.dart';

final game = PlushieDaycareGame();
final _appRouter = AppRouter();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
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
