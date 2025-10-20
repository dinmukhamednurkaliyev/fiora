import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pallete.freezed.dart';

@freezed
abstract class FioraColorPair with _$FioraColorPair {
  const factory FioraColorPair({required Color main, required Color on}) =
      _FioraColorPair;

  factory FioraColorPair.fromMain(Color main) {
    return FioraColorPair(
      main: main,
      on: main.computeLuminance() > 0.5 ? const Color(0xFF000000) : const Color(0xFFFFFFFF),
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
}
