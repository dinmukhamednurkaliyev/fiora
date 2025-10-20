import 'package:fiora/fiora.dart';
import 'package:flutter/cupertino.dart';

import 'cupertino_typography.dart';

@immutable
class FioraCupertinoThemeBuilder {
  final FioraConfiguration configuration;

  const FioraCupertinoThemeBuilder.internal({required this.configuration});

  CupertinoThemeData get light => _buildThemeData(
    brightness: Brightness.light,
    palette: configuration.palette,
  );

  CupertinoThemeData get dark => _buildThemeData(
    brightness: Brightness.dark,
    palette: configuration.palette,
  );

  CupertinoThemeData _buildThemeData({
    required Brightness brightness,
    required FioraPalette palette,
  }) {
    final baseTheme = brightness == Brightness.light
        ? const CupertinoThemeData(brightness: Brightness.light)
        : const CupertinoThemeData(brightness: Brightness.dark);

    final primaryColor = palette.primary.main;

    final textTheme = configuration.typography.buildCupertinoTextTheme(baseTheme);

    return baseTheme.copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: palette.surface.main,
      barBackgroundColor: palette.surface.main,
      textTheme: textTheme,
    );
  }
}
