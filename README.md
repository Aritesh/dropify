<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Dropify

**Dropify** is a highly customizable dropdown menu button for Flutter, designed to handle both static and dynamic data. It features various design styles such as Material, Fancy, Cappuccino, and Simple, and comes with advanced features like searchability, multi-selection, and customizable item labels.

## Features

- **Dynamic Data Handling**: Easily manage static or dynamic dropdown items with ease.
- **Multiple Design Styles**: Supports Material, Fancy, Cappuccino, and Simple dropdown styles.
- **Searchable Dropdown**: Built-in search feature for filtering items.
- **Multi-Select Option**: Allows users to select multiple items from the dropdown.
- **Custom Item Labels**: Customize the display of items with labels.
- **Fully Customizable**: Control the appearance, behavior, and interactions of the dropdown.
- **Responsive Design**: Works seamlessly across iOS and Android platforms.

## Getting Started

### Prerequisites

- You need to have Flutter installed. You can follow the official Flutter installation guide [here](https://flutter.dev/docs/get-started/install).
- This package requires Flutter 2.x or higher.

### Installation

To get started with **Dropify**, add the following dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  dropify: ^0.0.2

  Run the following command in the terminal to install the package:


flutter pub get

Usage
Here’s a simple example demonstrating how to use Dropify in your Flutter application:

dart
Copy code
import 'package:flutter/material.dart';
import 'package:dropify/dropify.dart';

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
            designStyle: 'fancy',  // You can choose between 'material', 'fancy', 'cappuccino', 'simple'
          ),
        ),
      ),
    );
  }
}
