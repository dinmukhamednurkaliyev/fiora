import 'package:fiora/fiora.dart';
import 'package:flutter/material.dart';

extension MaterialFioraTypography on FioraTypography {
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
