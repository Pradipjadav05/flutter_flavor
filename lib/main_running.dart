import 'package:flutter_flavors/flavours/flavor_config.dart';
import 'package:flutter_flavors/main_common.dart';

/// Entry point for the Running (production) flavor of the app.
void main() {
  mainCommon(flavor: Flavor.beta, baseUrl: "running - urls", name: "Running");
}