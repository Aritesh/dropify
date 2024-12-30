import 'package:flutter/material.dart';

class DropifyStyles {
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
