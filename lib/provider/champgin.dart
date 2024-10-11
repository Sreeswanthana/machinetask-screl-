

// providers/campaign_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/form models.dart';
import '../ui/views/startup/startup_viewmodel.dart';

final campaignProvider = StateNotifierProvider<CampaignViewModel, List<FormStepsModel>>((ref) {
  return CampaignViewModel();
});
