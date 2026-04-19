import 'package:freezed_annotation/freezed_annotation.dart';

part 'daycare_state.freezed.dart';

@freezed
abstract class DaycareState with _$DaycareState {
  const factory DaycareState({
    required double happiness,
    required double energy,
    required double hunger,
  }) = _DaycareState;
}
