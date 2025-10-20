import 'package:flutter/material.dart';

import 'extensions.dart';

extension FioraDeviceExtensions on BuildContext {
  static const double _compactBreakpoint = 600.0;
  static const double _mediumBreakpoint = 840.0;

  bool get isMobile => screenWidth < _compactBreakpoint;

  bool get isTablet =>
      screenWidth >= _compactBreakpoint && screenWidth < _mediumBreakpoint;

  bool get isDesktop => screenWidth >= _mediumBreakpoint;

  DeviceCategory get deviceCategory {
    if (isMobile) {
      return DeviceCategory.mobile;
    } else if (isTablet) {
      return DeviceCategory.tablet;
    } else {
      return DeviceCategory.desktop;
    }
  }
}

enum DeviceCategory { mobile, tablet, desktop }
