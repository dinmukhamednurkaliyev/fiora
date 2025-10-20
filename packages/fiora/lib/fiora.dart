library;

import 'package:flutter/foundation.dart';

import 'fiora.dart';

export 'core/configuration.dart';
export 'core/pallete.dart';
export 'core/theme.dart';
export 'core/typography.dart';
export 'extensions/build_context_extension.dart';
export 'extensions/device_extension.dart';
export 'extensions/widget_flex_extension.dart';
export 'extensions/widget_interaction_extension.dart';
export 'extensions/widget_styling_extension.dart';
export 'extensions/widget_visibility_extension.dart';

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

  static void initialize({required FioraConfiguration configuration}) {
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
