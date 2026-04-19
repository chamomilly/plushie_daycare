import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plushie_daycare_flutter/bloc/daycare_state.dart';

class DaycareCubit extends Cubit<DaycareState> {
  Timer? _timer;

  DaycareCubit()
    : super(const DaycareState(happiness: 1, energy: 1, hunger: 0)) {
    _startDecay();
  }

  void _startDecay() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      emit(
        state.copyWith(
          happiness: (state.happiness - 0.01).clamp(0.0, 1.0),
          energy: (state.energy - 0.005).clamp(0.0, 1.0),
          hunger: (state.hunger + 0.01).clamp(0.0, 1.0),
        ),
      );
    });
  }

  void feed() {
    emit(
      state.copyWith(
        hunger: (state.hunger - 0.3).clamp(0.0, 1.0),
        happiness: (state.happiness + 0.1).clamp(0.0, 1.0),
      ),
    );
  }

  void play() {
    emit(
      state.copyWith(
        happiness: (state.happiness + 0.2).clamp(0.0, 1.0),
        energy: (state.energy - 0.2).clamp(0.0, 1.0),
        hunger: (state.hunger + 0.1).clamp(0.0, 1.0),
      ),
    );
  }

  void sleep() {
    emit(state.copyWith(energy: (state.energy + 0.4).clamp(0.0, 1.0)));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
