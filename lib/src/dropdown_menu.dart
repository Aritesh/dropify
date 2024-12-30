import 'package:flutter/material.dart';

class DropifyDropdownMenu<T> extends StatelessWidget {
  final List<T> data;
  final String Function(T) itemLabel;
  final Function(T) onItemSelected;
  final String designStyle;

  DropifyDropdownMenu({
    required this.data,
    required this.itemLabel,
    required this.onItemSelected,
    this.designStyle = 'material',
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: data.map((item) {
        return ListTile(
          title: Text(itemLabel(item)),
          onTap: () {
            onItemSelected(item);
            Navigator.pop(context);
          },
        );
      }).toList(),
    );
  }
}
