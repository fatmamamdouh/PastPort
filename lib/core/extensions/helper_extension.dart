import 'package:flutter/material.dart';

extension ContextHelper on BuildContext {
  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  double get height {
    return MediaQuery.sizeOf(this).height;
  }

  /// Add new screen above the current screen, previous screens are available

  void navigate(Widget screen) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  /// Replace the current screen with new screen, and remove only current screen

  void navigateReplace(Widget screen) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  /// Navigate to new screen, and remove all previous screens

  void pushAbove(String baseRouteName, Widget newScreen) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (context) => newScreen,
      ),
          (route) => route.settings.name == baseRouteName,
    );
  }
}