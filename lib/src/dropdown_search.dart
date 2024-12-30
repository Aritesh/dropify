import 'package:flutter/material.dart';

class DropifySearch<T> extends StatefulWidget {
  final List<T> data;
  final String Function(T) itemLabel;
  final Function(T) onItemSelected;

  DropifySearch({
    required this.data,
    required this.itemLabel,
    required this.onItemSelected,
  });

  @override
  _DropifySearchState<T> createState() => _DropifySearchState<T>();
}

class _DropifySearchState<T> extends State<DropifySearch<T>> {
  TextEditingController _searchController = TextEditingController();
  List<T> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData = widget.data;
  }

  void _filterItems(String query) {
    setState(() {
      _filteredData = widget.data
          .where((item) => widget
              .itemLabel(item)
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            onChanged: _filterItems,
            decoration: InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: _filteredData.map((item) {
              return ListTile(
                title: Text(widget.itemLabel(item)),
                onTap: () {
                  widget.onItemSelected(item);
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
