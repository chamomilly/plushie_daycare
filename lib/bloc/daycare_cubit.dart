import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plushie_daycare_flutter/bloc/daycare_state.dart';

class DaycareCubit extends Cubit<DaycareState> {
  Timer? _timer;

  DaycareCubit()
    : super(const DaycareState(happiness: 1, energy: 1, hunger: 0)) {
    applyDecay();
  }

  DateTime getLastUpdated() {
    // TODO: add shared preferences for local storage
    return DateTime.now().subtract(Duration(hours: 1));
  }

  void applyDecay() {
    final elapsed = DateTime.now().difference(getLastUpdated());
    final hours = elapsed.inMinutes / 60;

    double hunger = (state.hunger + hours * 0.15).clamp(0.0, 1.0);
    double energy = (state.energy - hours * 0.07).clamp(0.0, 1.0);
    double happiness = state.happiness;

    // Personality effects
    if (hunger > 0.7) {
      happiness -= hours * 0.05;
    }

    if (energy < 0.3) {
      happiness -= hours * 0.04;
    }

    if (hunger > 0.85 && energy < 0.2) {
      // severe neglect
      happiness -= hours * 0.1;
    }

    emit(
      state.copyWith(
        hunger: hunger,
        energy: energy,
        happiness: happiness.clamp(0.0, 1.0),
      ),
    );
  }

  void feed() {
    if (state.hunger < 0.2) {
      emit(state.copyWith(happiness: (state.happiness - 0.05).clamp(0, 1)));
    }
    emit(
      state.copyWith(
        hunger: (state.hunger - 0.4).clamp(0.0, 1.0),
        happiness: (state.happiness + 0.1).clamp(0.0, 1.0),
      ),
    );
  }

  void play() {
    // too tired -> refuse to play
    if (state.energy < 0.2) {
      emit(state.copyWith(happiness: (state.happiness - 0.05).clamp(0, 1)));
    }

    // too hungry -> refuse
    if (state.hunger > 0.8) {
      emit(state.copyWith(happiness: (state.happiness - 0.05).clamp(0, 1)));
    }

    emit(
      state.copyWith(
        happiness: (state.happiness + 0.3).clamp(0.0, 1.0),
        energy: (state.energy - 0.2).clamp(0.0, 1.0),
        hunger: (state.hunger + 0.1).clamp(0.0, 1.0),
      ),
    );
  }

  void sleep() {
    // already energetic -> no effect
    if (state.energy > 0.8) return;

    emit(
      state.copyWith(
        energy: (state.energy + 0.5).clamp(0.0, 1.0),
        hunger: (state.hunger + 0.05).clamp(0.0, 1.0),
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
