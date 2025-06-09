enum Flavor { beta, running }

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final String baseUrl;

  static FlavorConfig? _instance;

  FlavorConfig._(
      {required this.flavor, required this.name, required this.baseUrl});

  factory FlavorConfig({required Flavor flavor, required String baseUrl, required String name}) {
    _instance ??= FlavorConfig._(flavor: flavor, baseUrl: baseUrl, name: name);

    return _instance!;
  }

  static FlavorConfig get instance {
    if(_instance == null) {
      throw Exception("Not Initialized");
    }
    return _instance!;
  }

  static bool isBeta() => instance.flavor == Flavor.beta;

  static bool isRunning() => instance.flavor == Flavor.running;


}
