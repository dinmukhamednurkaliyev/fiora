import 'package:fiora/core/configuration.dart';
import 'package:fiora/core/pallete.dart';
import 'package:flutter/material.dart';

@immutable
class FioraTheme {
  final FioraConfiguration configuration;

  const FioraTheme.internal({required this.configuration});

  Color get _seedColor => configuration.palette.primary.main;

  ThemeData get light => _buildThemeData(
    brightness: Brightness.light,
    palette: configuration.palette,
    seedColor: _seedColor,
  );

  ThemeData get dark => _buildThemeData(
    brightness: Brightness.dark,
    palette: configuration.palette,
    seedColor: _seedColor,
  );

  ThemeData _buildThemeData({
    required Brightness brightness,
    required FioraPalette palette,
    required Color seedColor,
  }) {
    final baseScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    );

    final colorScheme = baseScheme.copyWith(
      primary: palette.primary.main,
      onPrimary: palette.primary.on,

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
