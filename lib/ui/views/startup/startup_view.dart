import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/champgin.dart';
import '../../../widgets/formfeild.dart';
import '../../../widgets/sidebar.dart';

class CampaignScreen extends ConsumerWidget {
  final TextEditingController campaignController = TextEditingController();
  final TextEditingController previewController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final steps = ref.watch(campaignProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Create New Email Campaign')),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FormFields(
                    campaignController: campaignController,
                    previewController: previewController,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement Save Draft functionality
                        },
                        child: Text('Save Draft'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement Next Step functionality
                        },
                        child: Text('Next Step'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Campaign Steps', style: TextStyle(fontSize: 18)),
                  ...steps.map((step) => SidebarStep(
                    title: step.title,
                    label: step.label,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}