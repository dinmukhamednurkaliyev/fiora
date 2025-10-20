import 'package:fiora/source/core/configuration.dart';
import 'package:fiora/source/core/pallete.dart';
import 'package:flutter/material.dart';

typedef FioraThemeSet = ({ThemeData light, ThemeData dark});

@immutable
class FioraTheme {
  final FioraConfiguration configuration;

  const FioraTheme.internal({required this.configuration});

  ThemeData get light => _buildThemeData(
    brightness: Brightness.light,
    palette: configuration.lightPalette,
  );

  ThemeData get dark => _buildThemeData(
    brightness: Brightness.dark,
    palette: configuration.darkPalette,
  );

  ThemeData _buildThemeData({
    required Brightness brightness,
    required FioraPalette palette,
  }) {
    final baseScheme = ColorScheme.fromSeed(
      seedColor: palette.primary.main,
      brightness: brightness,
    );

    final colorScheme = baseScheme.copyWith(
      primary: palette.primary.main,
      onPrimary: palette.primary.on,
      secondary: palette.secondary.main,
      onSecondary: palette.secondary.on,
      tertiary: palette.tertiary?.main,
      onTertiary: palette.tertiary?.on,
      surface: palette.surface.main,
      onSurface: palette.surface.on,
      error: palette.error.main,
      onError: palette.error.on,
      surfaceTint: Colors.transparent,
    );

    final textTheme = configuration.typography.buildTextTheme(colorScheme);

    var extensions = <ThemeExtension<dynamic>>[];

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: colorScheme.surface,
      extensions: extensions,
    );
  }
}
