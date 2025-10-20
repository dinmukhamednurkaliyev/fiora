import 'package:fiora/fiora.dart';
import 'package:flutter/material.dart';

extension MaterialFioraPalette on FioraPalette {
  static FioraPalette fromPrimary(
    Color primaryColor, {
    Color? surfaceColor,
    Color? errorColor,
  }) {
    final primaryPair = FioraColorPair.fromMain(primaryColor);

    final fromSeed = ColorScheme.fromSeed(seedColor: primaryColor);

    return FioraPalette(
      primary: primaryPair,
      secondary: FioraColorPair.fromMain(fromSeed.secondary),
      tertiary: FioraColorPair.fromMain(fromSeed.tertiary),
      surface: FioraColorPair.fromMain(surfaceColor ?? fromSeed.surface),
      error: FioraColorPair.fromMain(errorColor ?? fromSeed.error),
    );
  }
}
