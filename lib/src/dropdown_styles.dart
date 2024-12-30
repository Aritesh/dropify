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
            BoxShadow(
              blurRadius: 8,
              color: Colors.deepPurple.withOpacity(0.2),
            ),
          ],
        );
      case 'cappuccino':
        return BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              color: Colors.brown.withOpacity(0.4),
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
