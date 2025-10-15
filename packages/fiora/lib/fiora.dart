library;

import 'package:fiora/configuration.dart';
import 'package:fiora/themes.dart';
import 'package:flutter/material.dart';

export 'configuration.dart';

@immutable
abstract final class Fiora {
  static FioraThemes? _themes;
  static FioraConfiguration? _configuration;

  static FioraThemes get themes {
    _assertInitialized('themes');
    return _themes!;
  }

  static FioraConfiguration get configuration {
    _assertInitialized('configuration');
    return _configuration!;
  }

  static void initialize(FioraConfiguration configuration) {
    if (_configuration != null) {
      debugPrint(
        'Fiora has already been initialized. Skipping re-initialization.',
      );
      return;
    }

    _configuration = configuration;
    _themes = FioraThemes(configuration: configuration);
  }

  static void _assertInitialized(String propertyName) {
    assert(
      _configuration != null,
      'Fiora must be initialized before accessing Fiora.$propertyName.'
      'Call Fiora.initialize(config) first.',
    );
  }

  const Fiora._();
}
