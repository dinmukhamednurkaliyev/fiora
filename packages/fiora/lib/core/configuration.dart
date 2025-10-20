import 'package:fiora/core/pallete.dart';
import 'package:fiora/core/typography.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';

@freezed
abstract class FioraConfiguration with _$FioraConfiguration {
  const factory FioraConfiguration({
    required FioraPalette lightPalette,
    required FioraPalette darkPalette,
    @Default(FioraTypography.standard) FioraTypography typography,
  }) = _FioraConfiguration;

  const FioraConfiguration._();

  factory FioraConfiguration.create({
    required Color primaryColor,
    Color? darkPrimaryColor,
    String? fontFamily,
  }) {
    final lightPalette = FioraPalette.fromPrimary(primaryColor);
    final darkPalette = FioraPalette.fromPrimary(
      darkPrimaryColor ?? primaryColor,
    );

    final typography = FioraTypography(fontFamily: fontFamily);

    return FioraConfiguration(
      lightPalette: lightPalette,
      darkPalette: darkPalette,
      typography: typography,
    );
  }
}
