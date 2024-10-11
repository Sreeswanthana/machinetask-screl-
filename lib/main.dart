import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screlmachine/ui/views/startup/startup_view.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campaign Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CampaignScreen(),
    );
  }
}