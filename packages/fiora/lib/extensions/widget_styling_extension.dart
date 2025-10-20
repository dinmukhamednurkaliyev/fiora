import 'package:fiora/fiora.dart';
import 'package:flutter/widgets.dart';

extension FioraStylingExtension on Widget {
  Widget rounded(double radius) {
    return ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  }

  Widget roundedAll(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: this,
    );
  }
}

extension FioraBackgroundExtension on Widget {
  Widget backgroundColor(Color color) => DecoratedBox(
    decoration: BoxDecoration(color: color),
    child: this,
  );

  Widget backgroundPrimary(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(color: context.colors.primary),
    child: this,
  );
}
