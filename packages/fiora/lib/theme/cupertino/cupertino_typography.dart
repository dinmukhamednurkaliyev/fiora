import 'package:fiora/fiora.dart';
import 'package:flutter/cupertino.dart';

extension CupertinoFioraTypography on FioraTypography {
  CupertinoTextThemeData buildCupertinoTextTheme(CupertinoThemeData theme) {
    // For now, we'll use a basic mapping to CupertinoTextThemeData.
    // In a real-world scenario, you would map each TextStyle to its Cupertino equivalent.
    return CupertinoTextThemeData(
      primaryColor: theme.primaryColor,
      textStyle: bodyMedium,
      actionTextStyle: labelLarge,
      navTitleTextStyle: titleLarge,
      navLargeTitleTextStyle: displaySmall,
      navActionTextStyle: labelLarge,
      tabLabelTextStyle: labelSmall,
      pickerTextStyle: bodyLarge,
      dateTimePickerTextStyle: bodyLarge,
    );
  }
}
