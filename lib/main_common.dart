import 'package:flutter/material.dart';

import 'flavours/flavor_config.dart';
import 'flutter_app.dart';

/// Common entry point for all flavor-based main files.
/// It initializes the flavor configuration and runs the app.
void mainCommon(
    {required Flavor flavor, required String baseUrl, required String name}) {

  // Initialize the app flavor configuration
  FlavorConfig(flavor: flavor, baseUrl: baseUrl, name: name);

  // Run the app
  runApp(const FlutterApp());
}
