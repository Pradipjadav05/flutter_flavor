/// Enum representing different app flavors/environments
/// For example: beta (staging/testing) and running (production)
enum Flavor {
  beta,
  running
}

/// A singleton class to configure and manage the current flavor of the app.
class FlavorConfig {
  // The selected flavor for the app
  final Flavor flavor;

  // A human-readable name for the current flavor
  final String name;

  // The base URL used for API calls in the current flavor
  final String baseUrl;

  // Singleton instance of [FlavorConfig]
  static FlavorConfig? _instance;

  // Private named constructor used to create the singleton instance
  FlavorConfig._({
    required this.flavor,
    required this.name,
    required this.baseUrl,
  });

  /*
  * Factory constructor to initialize the singleton if it hasn't been created yet.
  * This ensures that only one instance of [FlavorConfig] exists throughout the app.
  * */
  factory FlavorConfig({
    required Flavor flavor,
    required String baseUrl,
    required String name,
  }) {
    // Only initialize _instance if it hasn't already been initialized
    _instance ??= FlavorConfig._(
      flavor: flavor,
      baseUrl: baseUrl,
      name: name,
    );

    return _instance!;
  }

  /*
  * Getter to retrieve the singleton instance
  * Throws an exception if [FlavorConfig] is accessed before being initialized.
  * */
  static FlavorConfig get instance {
    if (_instance == null) {
      throw Exception("FlavorConfig is not initialized. Please initialize it before using.");
    }
    return _instance!;
  }

  // Utility method to check if the current flavor is [Flavor.beta]
  static bool isBeta() => instance.flavor == Flavor.beta;

  // Utility method to check if the current flavor is [Flavor.running]
  static bool isRunning() => instance.flavor == Flavor.running;
}
