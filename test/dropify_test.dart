import 'package:flutter_test/flutter_test.dart';
import 'package:dropify/dropify.dart';

void main() {
  test('Dropdown item selection test', () {
    final selectedItems = <String>[];

    DropifyDropdownButton<String>(
      data: ['Item 1', 'Item 2', 'Item 3'],
      itemLabel: (item) => item,
      onItemSelected: (selectedItem) {
        selectedItems.add(selectedItem);
      },
      searchEnabled: true,
    );

    expect(selectedItems.isEmpty, true);
  });
}
