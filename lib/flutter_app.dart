import 'package:flutter/material.dart';

import 'flavours/flavor_config.dart';

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
            Text("Running Mode - ${FlavorConfig.instance.name}"),
            Text("Base Url - ${FlavorConfig.instance.baseUrl}"),
          ],
        ),
      ),
    );
  }
}
