import 'package:fiora/configuration.dart';
import 'package:flutter/material.dart';

@immutable
class FioraThemes {
  final FioraConfiguration configuration;

  const FioraThemes({required this.configuration});

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

    final textTheme = _buildTextTheme(
      colorScheme: colorScheme,
      fontFamily: configuration.fontFamily,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: colorScheme.surface,

      extensions: <ThemeExtension<dynamic>>[],
    );
  }

  static TextTheme _buildTextTheme({
    required ColorScheme colorScheme,
    String? fontFamily,
  }) {
    const baseTextTheme = TextTheme();

    return baseTextTheme.apply(
      fontFamily: fontFamily,
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );
  }
}
