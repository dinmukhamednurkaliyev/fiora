import 'package:flutter/material.dart';

typedef FioraTextStyles = ({
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
});

extension FioraBuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colors => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color? get iconThemeColor => theme.iconTheme.color;

  FioraTextStyles get text => (
    displayLarge: textTheme.displayLarge,
    displayMedium: textTheme.displayMedium,
    displaySmall: textTheme.displaySmall,

    headlineLarge: textTheme.headlineLarge,
    headlineMedium: textTheme.headlineMedium,
    headlineSmall: textTheme.headlineSmall,

    titleLarge: textTheme.titleLarge,
    titleMedium: textTheme.titleMedium,
    titleSmall: textTheme.titleSmall,

    bodyLarge: textTheme.bodyLarge,
    bodyMedium: textTheme.bodyMedium,
    bodySmall: textTheme.bodySmall,

    labelLarge: textTheme.labelLarge,
    labelMedium: textTheme.labelMedium,
    labelSmall: textTheme.labelSmall,
  );
}

extension FioraMediaExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get screenSize => mediaQuery.size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  EdgeInsets get padding => mediaQuery.padding;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}
