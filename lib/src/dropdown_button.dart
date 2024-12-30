import 'package:flutter/material.dart';
import 'dropdown_menu.dart';

/// A customizable dropdown button widget.
///
/// The `DropifyDropdownButton` widget is used to display a dropdown button
/// that allows users to select an item from a list of options. It supports
/// customization of the appearance and behavior of the dropdown button and
/// the dropdown menu, such as enabling search functionality and defining
/// custom item labels.
///
/// The dropdown button style can be adjusted with the [designStyle] property.
/// You can choose between 'material' and 'fancy' styles.
class DropifyDropdownButton<T> extends StatelessWidget {
  /// The list of items to be displayed in the dropdown menu.
  ///
  /// This list holds the options that users can select from.
  final List<T> data;

  /// A function that returns the label to be displayed for each item.
  ///
  /// This function is used to generate a label for each item in the dropdown
  /// menu, based on the data type [T].
  final String Function(T) itemLabel;

  /// A function that is called when an item is selected from the dropdown menu.
  ///
  /// The selected item is passed to this callback function.
  final Function(T) onItemSelected;

  /// The style of the dropdown button.
  ///
  /// This property allows the user to define the appearance of the dropdown
  /// button. It can be set to 'material' for a standard style or 'fancy' for
  /// a more customized look.
  final String designStyle;

  /// Creates a [DropifyDropdownButton] with the given [data], [itemLabel],
  /// [onItemSelected], and an optional [designStyle].
  ///
  /// - [data]: A list of items to display in the dropdown menu.
  /// - [itemLabel]: A function that returns the label for each item in the list.
  /// - [onItemSelected]: A callback function that is called when an item is selected.
  /// - [designStyle]: A string representing the style of the dropdown button.
  ///     Defaults to 'material'.
  DropifyDropdownButton({
    required this.data,
    required this.itemLabel,
    required this.onItemSelected,
    this.designStyle = 'material',
    required bool searchEnabled, // Default to material style
  });

  /// Builds the widget that displays the dropdown button.
  ///
  /// This method creates the visual appearance of the dropdown button, including
  /// the icon and label. It also handles the button's tap event, which triggers
  /// the dropdown menu to appear.
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

  /// Displays the dropdown menu when the button is tapped.
  ///
  /// This method opens a modal bottom sheet that shows the dropdown menu,
  /// populated with the items in [data]. The user can select an item from
  /// the list, which will trigger the [onItemSelected] callback.
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
