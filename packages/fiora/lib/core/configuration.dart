import 'package:fiora/core/pallete.dart';
import 'package:fiora/core/typography.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';

@freezed
abstract class FioraConfiguration with _$FioraConfiguration {
  const factory FioraConfiguration({
    required FioraPalette palette,
    @Default(FioraTypography.standard) FioraTypography typography,
    @Default(12.0) double defaultBorderRadius,
  }) = _FioraConfiguration;

  const FioraConfiguration._();

  factory FioraConfiguration.create({
    required Color primaryColor,
    String? fontFamily,
    double defaultBorderRadius = 12.0,
  }) {
    final palette = FioraPalette.fromPrimary(primaryColor);
    final typography = FioraTypography(fontFamily: fontFamily);

    return FioraConfiguration(
      palette: palette,
      typography: typography,
      defaultBorderRadius: defaultBorderRadius,
    );
  }
}
