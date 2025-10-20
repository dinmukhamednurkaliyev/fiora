import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'typography.freezed.dart';

@freezed
abstract class FioraTypography with _$FioraTypography {
  static const standard = FioraTypography(
    fontFamily: null,
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w700,
      height: 1.12,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w700,
      height: 1.15,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      height: 1.22,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.29,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 1.33,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.5,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.43,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      height: 1.5,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      height: 1.43,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      height: 1.33,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.43,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.33,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      height: 1.45,
      letterSpacing: 0.5,
    ),
  );

  const factory FioraTypography({
    String? fontFamily,

    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) = _FioraTypography;

  const FioraTypography._();

  TextTheme buildTextTheme(ColorScheme colorScheme) {
    final merged = FioraTypography.standard.copyWith(
      fontFamily: fontFamily ?? FioraTypography.standard.fontFamily,
      displayLarge: displayLarge ?? FioraTypography.standard.displayLarge,
      displayMedium: displayMedium ?? FioraTypography.standard.displayMedium,
      displaySmall: displaySmall ?? FioraTypography.standard.displaySmall,
      headlineLarge: headlineLarge ?? FioraTypography.standard.headlineLarge,
      headlineMedium: headlineMedium ?? FioraTypography.standard.headlineMedium,
      headlineSmall: headlineSmall ?? FioraTypography.standard.headlineSmall,
      titleLarge: titleLarge ?? FioraTypography.standard.titleLarge,
      titleMedium: titleMedium ?? FioraTypography.standard.titleMedium,
      titleSmall: titleSmall ?? FioraTypography.standard.titleSmall,
      bodyLarge: bodyLarge ?? FioraTypography.standard.bodyLarge,
      bodyMedium: bodyMedium ?? FioraTypography.standard.bodyMedium,
      bodySmall: bodySmall ?? FioraTypography.standard.bodySmall,
      labelLarge: labelLarge ?? FioraTypography.standard.labelLarge,
      labelMedium: labelMedium ?? FioraTypography.standard.labelMedium,
      labelSmall: labelSmall ?? FioraTypography.standard.labelSmall,
    );

    return TextTheme(
      displayLarge: merged.displayLarge,
      displayMedium: merged.displayMedium,
      displaySmall: merged.displaySmall,
      headlineLarge: merged.headlineLarge,
      headlineMedium: merged.headlineMedium,
      headlineSmall: merged.headlineSmall,
      titleLarge: merged.titleLarge,
      titleMedium: merged.titleMedium,
      titleSmall: merged.titleSmall,
      bodyLarge: merged.bodyLarge,
      bodyMedium: merged.bodyMedium,
      bodySmall: merged.bodySmall,
      labelLarge: merged.labelLarge,
      labelMedium: merged.labelMedium,
      labelSmall: merged.labelSmall,
    ).apply(
      fontFamily: merged.fontFamily,
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );
  }
}
