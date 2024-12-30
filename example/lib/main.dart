import 'package:flutter/material.dart';
import 'package:dropify/dropify.dart'; // Import Dropify package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dropify Example')),
        body: Center(
          child: DropifyDropdownButton<String>(
            data: ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
            itemLabel: (item) => item,
            onItemSelected: (selectedItem) {
              print('Selected: $selectedItem');
            },
            designStyle:
                'fancy', // Design style options: 'material', 'fancy', 'cappuccino', 'simple'
            searchEnabled: true, // Enable search functionality
          ),
        ),
      ),
    );
  }
}
