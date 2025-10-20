import 'package:flutter/widgets.dart';

extension FioraFlexExtension on Widget {
  Widget expanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  Widget flexible({int flex = 1}) {
    return Flexible(flex: flex, child: this);
  }
}
