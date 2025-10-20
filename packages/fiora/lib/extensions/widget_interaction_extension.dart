import 'package:flutter/material.dart';

extension FioraInteractionExtension on Widget {
  Widget onTap(
    VoidCallback onTap, {
    HitTestBehavior behavior = HitTestBehavior.opaque,
  }) {
    return GestureDetector(onTap: onTap, behavior: behavior, child: this);
  }
}
