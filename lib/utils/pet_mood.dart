import 'package:plushie_daycare_flutter/bloc/daycare_state.dart';

enum PetMood { happy, neutral, hungry, tired, sad, exhausted }

extension PetMoodX on DaycareState {
  PetMood get mood {
    if (energy < 0.15) return PetMood.exhausted;
    if (hunger > 0.85) return PetMood.hungry;
    if (happiness < 0.25) return PetMood.sad;
    if (energy < 0.3) return PetMood.tired;
    if (happiness > 0.7 && hunger < 0.4 && energy > 0.5) {
      return PetMood.happy;
    }
    return PetMood.neutral;
  }
}
