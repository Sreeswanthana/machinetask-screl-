import 'package:flutter/material.dart';

class SidebarStep extends StatelessWidget {
  final String title;
  final String label;

  const SidebarStep({
    Key? key,
    required this.title,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(label),
    );
  }
}
