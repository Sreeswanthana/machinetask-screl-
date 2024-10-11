import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/form models.dart';

class CampaignViewModel extends StateNotifier<List<FormStepsModel>> {
  CampaignViewModel() : super([]);

  void addStep(FormStepsModel step) {
    state = [...state, step];
  }

  void updateStep(int index, FormStepsModel updatedStep) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) updatedStep else state[i]
    ];
  }
}

final campaignProvider = StateNotifierProvider<CampaignViewModel, List<FormStepsModel>>((ref) {
  return CampaignViewModel();
});