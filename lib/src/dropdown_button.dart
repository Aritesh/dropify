import 'package:flutter/material.dart';
import 'dropdown_menu.dart';
import 'dropdown_styles.dart';

class DropifyDropdownButton<T> extends StatelessWidget {
  final List<T> data;
  final String Function(T) itemLabel;
  final Function(T) onItemSelected;
  final String designStyle;

  DropifyDropdownButton({
    required this.data,
    required this.itemLabel,
    required this.onItemSelected,
    this.designStyle = 'material', // Default to material style
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDropdownMenu(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: designStyle == 'material'
              ? Colors.blue
              : designStyle == 'fancy'
                  ? Colors.deepPurple
                  : Colors.grey,
        ),
        child: Row(
          children: [
            Icon(Icons.arrow_drop_down),
            Text('Select Item', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }

  void _showDropdownMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => DropifyDropdownMenu<T>(
        data: data,
        itemLabel: itemLabel,
        onItemSelected: onItemSelected,
        designStyle: designStyle,
      ),
    );
  }
}
