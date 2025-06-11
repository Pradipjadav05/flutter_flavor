import 'package:flutter/material.dart';

import 'flavours/flavor_config.dart';

/// Root widget of the app
class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Flavor"),
        ),
        body: Column(
          children: [
            // Displaying the current flavor name
            Text("Running Mode - ${FlavorConfig.instance.name}"),
            // Displaying the base URL used by the app
            Text("Base Url - ${FlavorConfig.instance.baseUrl}"),
          ],
        ),
      ),
    );
  }
}
