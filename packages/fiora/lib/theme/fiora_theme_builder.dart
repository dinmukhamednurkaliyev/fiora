import 'package:fiora/fiora.dart';
import 'package:fiora/theme/cupertino/cupertino_theme.dart';
import 'package:fiora/theme/material/material_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

@immutable
class FioraThemeBuilder {
  final FioraConfiguration configuration;

  late final FioraMaterialThemeBuilder material;
  late final FioraCupertinoThemeBuilder cupertino;

  FioraThemeBuilder.internal({required this.configuration}) {
    material = FioraMaterialThemeBuilder.internal(configuration: configuration);
    cupertino = FioraCupertinoThemeBuilder.internal(configuration: configuration);
  }

  ThemeData get materialLight => material.light;
  ThemeData get materialDark => material.dark;

  CupertinoThemeData get cupertinoLight => cupertino.light;
  CupertinoThemeData get cupertinoDark => cupertino.dark;
}
