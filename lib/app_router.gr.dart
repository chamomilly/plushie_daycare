// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DaycareScreen]
class DaycareRoute extends PageRouteInfo<DaycareRouteArgs> {
  DaycareRoute({
    Key? key,
    required String petName,
    List<PageRouteInfo>? children,
  }) : super(
         DaycareRoute.name,
         args: DaycareRouteArgs(key: key, petName: petName),
         initialChildren: children,
       );

  static const String name = 'DaycareRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DaycareRouteArgs>();
      return DaycareScreen(key: args.key, petName: args.petName);
    },
  );
}

class DaycareRouteArgs {
  const DaycareRouteArgs({this.key, required this.petName});

  final Key? key;

  final String petName;

  @override
  String toString() {
    return 'DaycareRouteArgs{key: $key, petName: $petName}';
  }
}

/// generated route for
/// [StartScreen]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute({List<PageRouteInfo>? children})
    : super(StartRoute.name, initialChildren: children);

  static const String name = 'StartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartScreen();
    },
  );
}
