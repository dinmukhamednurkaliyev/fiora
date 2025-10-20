import 'package:flutter/widgets.dart';

extension FioraVisibilityExtension on Widget {
  Widget visible(bool isVisible) {
    return isVisible ? this : const SizedBox.shrink();
  }
}
