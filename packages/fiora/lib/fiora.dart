library;


import 'package:flutter/foundation.dart';

import 'source/core/core.dart';


export 'source/core/core.dart';
export 'source/extensions/extensions.dart';

@immutable
abstract final class Fiora {
  static FioraTheme? _themes;
  static FioraConfiguration? _configuration;

  static FioraTheme get themes {
    _assertInitialized('themes');
    return _themes!;
  }

  static FioraConfiguration get configuration {
    _assertInitialized('config');
    return _configuration!;
  }

  static void initialize(FioraConfiguration configuration) {
    if (_configuration != null) {
      debugPrint(
        '[Fiora] Fiora has already been initialized. Skipping re-initialization.',
      );
      return;
    }

    _configuration = configuration;

    _themes = FioraTheme.internal(configuration: configuration);

    debugPrint('[Fiora] Fiora Design System initialized successfully.');
  }

  static void _assertInitialized(String propertyName) {
    if (!kDebugMode) return;

    assert(
      _configuration != null,
      'Fiora must be initialized before accessing Fiora.$propertyName. '
      'Call Fiora.initialize(config) in your main() function first.',
    );
  }

  const Fiora._();
}
