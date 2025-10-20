import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pallete.freezed.dart';

@freezed
abstract class FioraColorPair with _$FioraColorPair {
  const factory FioraColorPair({required Color main, required Color on}) =
      _FioraColorPair;

  factory FioraColorPair.fromMain(Color main) {
    return FioraColorPair(
      main: main,
      on: ThemeData.estimateBrightnessForColor(main) == Brightness.dark
          ? Colors.white
          : Colors.black,
    );
  }
}

@freezed
abstract class FioraPalette with _$FioraPalette {
  const factory FioraPalette({
    required FioraColorPair primary,
    required FioraColorPair secondary,
    FioraColorPair? tertiary,
    required FioraColorPair surface,
    required FioraColorPair error,
  }) = _FioraPalette;

  factory FioraPalette.fromPrimary(
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
