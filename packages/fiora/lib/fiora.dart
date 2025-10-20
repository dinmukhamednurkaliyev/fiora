library;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'core/configuration.dart';
import 'core/typography.dart';
import 'theme/cupertino/cupertino_palette.dart';
import 'theme/fiora_theme_builder.dart';
import 'theme/material/material_palette.dart';

export 'core/configuration.dart';
export 'core/pallete.dart';
export 'core/typography.dart';
export 'extensions/build_context_extension.dart';
export 'extensions/device_extension.dart';
export 'extensions/widget_flex_extension.dart';
export 'extensions/widget_interaction_extension.dart';
export 'extensions/widget_styling_extension.dart';
export 'extensions/widget_visibility_extension.dart';
export 'theme/fiora_theme_builder.dart';
export 'theme/fiora_theme_data.dart';

@immutable
abstract final class Fiora {
  static FioraThemeBuilder? _themes;
  static FioraConfiguration? _configuration;

  static FioraThemeBuilder get themes {
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

    _themes = FioraThemeBuilder.internal(configuration: configuration);

    debugPrint('[Fiora] Fiora Design System initialized successfully.');
  }

  static FioraConfiguration createMaterialConfiguration({
    required Color primaryColor,
    String? fontFamily,
    Color? surfaceColor,
    Color? errorColor,
  }) {
    final palette = MaterialFioraPalette.fromPrimary(
      primaryColor,
      surfaceColor: surfaceColor,
      errorColor: errorColor,
    );
    final typography = FioraTypography(fontFamily: fontFamily);

    return FioraConfiguration(palette: palette, typography: typography);
  }

  static FioraConfiguration createCupertinoConfiguration({
    required Color primaryColor,
    String? fontFamily,
    Color? surfaceColor,
    Color? errorColor,
  }) {
    final palette = CupertinoFioraPalette.fromPrimary(
      primaryColor,
      surfaceColor: surfaceColor,
      errorColor: errorColor,
    );
    final typography = FioraTypography(fontFamily: fontFamily);

    return FioraConfiguration(palette: palette, typography: typography);
  }

  static void _assertInitialized(String propertyName) {
    if (!kDebugMode) return;

    assert(
      _configuration != null,
      'Fiora must be initialized before accessing Fiora.$propertyName. '
      'Call Fiora.initialize(config) in your main() function first.',
    );
  }

  static Widget application({
    Key? key,
    required Widget home,
    required FioraConfiguration configuration,
  }) {
    Fiora.initialize(configuration: configuration);

    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      return CupertinoApp(
        key: key,
        theme: Fiora.themes.cupertinoLight,
        home: home,
      );
    } else {
      return MaterialApp(
        key: key,
        theme: Fiora.themes.materialLight,
        home: home,
      );
    }
  }

  const Fiora._();
}
