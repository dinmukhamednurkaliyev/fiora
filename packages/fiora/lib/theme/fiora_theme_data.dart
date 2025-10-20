import 'package:flutter/material.dart';

import '../core/configuration.dart';

@immutable
class FioraThemeData extends ThemeExtension<FioraThemeData> {
  final FioraConfiguration configuration;

  const FioraThemeData({required this.configuration});

  @override
  FioraThemeData copyWith({FioraConfiguration? configuration}) {
    return FioraThemeData(
      configuration: configuration ?? this.configuration,
    );
  }

  @override
  FioraThemeData lerp(ThemeExtension<FioraThemeData>? other, double t) {
    if (other is! FioraThemeData) {
      return this;
    }
    return t < 0.5 ? this : other;
  }
}
