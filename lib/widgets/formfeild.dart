import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {
  final TextEditingController campaignController;
  final TextEditingController previewController;

  const FormFields({
    Key? key,
    required this.campaignController,
    required this.previewController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: campaignController,
          decoration: InputDecoration(labelText: 'Campaign Name'),
        ),
        SizedBox(height: 10),
        TextField(
          controller: previewController,
          decoration: InputDecoration(labelText: 'Preview Text'),
        ),
      ],
    );
  }
}
