import 'package:fiora/fiora.dart';
import 'package:flutter/cupertino.dart';

extension CupertinoFioraPalette on FioraPalette {
  static FioraPalette fromPrimary(
    Color primaryColor, {
    Color? surfaceColor,
    Color? errorColor,
  }) {
    final primaryPair = FioraColorPair.fromMain(primaryColor);

    // Cupertino doesn't have a direct equivalent to ColorScheme.fromSeed.
    // For now, we'll use a basic approach.
    // In a real-world scenario, you might want to define a more sophisticated
    // way to generate a Cupertino palette from a primary color.
    return FioraPalette(
      primary: primaryPair,
      secondary: FioraColorPair.fromMain(CupertinoColors.systemGrey),
      tertiary: FioraColorPair.fromMain(CupertinoColors.systemGrey2),
      surface: FioraColorPair.fromMain(surfaceColor ?? CupertinoColors.systemBackground),
      error: FioraColorPair.fromMain(errorColor ?? CupertinoColors.systemRed),
    );
  }
}
