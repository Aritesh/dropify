import 'package:flutter/material.dart';

/// A class that provides various styles for the dropdown menu.
///
/// The `DropifyStyles` class contains a static method `getDropdownDecoration`
/// that returns a [BoxDecoration] based on the provided [designStyle]. This
/// allows customization of the dropdown button's appearance, including colors,
/// border radius, and box shadows.
class DropifyStyles {
  /// Returns a [BoxDecoration] based on the provided design style.
  ///
  /// This method provides different decoration styles for the dropdown menu
  /// based on the [designStyle] parameter. Available styles are:
  /// - 'material': A simple white background with a subtle shadow.
  /// - 'fancy': A deep purple background with a more pronounced shadow.
  /// - 'cappuccino': A brown background with a soft shadow.
  /// - default: A light grey background with a rounded border.
  ///
  /// - [designStyle]: A string representing the desired style. Supported values
  ///   are 'material', 'fancy', 'cappuccino', and 'default'.
  ///
  /// Returns a [BoxDecoration] that can be used to decorate the dropdown menu.
  static BoxDecoration getDropdownDecoration(String designStyle) {
    switch (designStyle) {
      case 'material':
        return BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black26,
            ),
          ],
        );
      case 'fancy':
        return BoxDecoration(
          color: Colors.deepPurple.shade50,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            const BoxShadow(
              blurRadius: 8,
              color: Color.fromRGBO(
                  128, 0, 128, 0.2), // Deep purple color with 20% opacity
            ),
          ],
        );
      case 'cappuccino':
        return BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            const BoxShadow(
              blurRadius: 6,
              color: Color.fromRGBO(
                  165, 42, 42, 0.4), // Brown color with 40% opacity
            ),
          ],
        );
      default:
        return BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        );
    }
  }
}
