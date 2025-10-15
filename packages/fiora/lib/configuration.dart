import 'package:flutter/material.dart';

@immutable
class FioraColorPair {
  final Color main;
  final Color on;

  const FioraColorPair({required this.main, required this.on});

  factory FioraColorPair.fromMain(Color main) {
    return FioraColorPair(
      main: main,
      on: ThemeData.estimateBrightnessForColor(main) == Brightness.dark
          ? Colors.white
          : Colors.black,
    );
  }
}

@immutable
class FioraPalette {
  final FioraColorPair primary;
  final FioraColorPair secondary;
  final FioraColorPair? tertiary;
  final FioraColorPair surface;
  final FioraColorPair error;

  const FioraPalette({
    required this.primary,
    required this.secondary,
    required this.surface,
    required this.error,
    this.tertiary,
  });
}

@immutable
class FioraConfiguration {
  final FioraPalette lightPalette;
  final FioraPalette darkPalette;
  final String? fontFamily;
  final double defaultBorderRadius;

  const FioraConfiguration({
    required this.lightPalette,
    required this.darkPalette,
    this.fontFamily,
    this.defaultBorderRadius = 12.0,
  });
}
