// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

class DynamicTextFieldList extends StatefulWidget {
  const DynamicTextFieldList({super.key});

  static const String routeName = 'test/';

  @override
  _DynamicTextFieldListState createState() => _DynamicTextFieldListState();
}

class _DynamicTextFieldListState extends State<DynamicTextFieldList> {
  // List to hold the TextEditingController instances
  final List<TextEditingController> _controllers = [];

  List<String> _csvData = []; // To store parsed CSV data

  // Function to add a new TextField
  void _addTextField() {
    setState(() {
      _controllers.add(TextEditingController());
    });
  }

  // Function to print all the values from the TextFields
  void _printValues() {
    // Print CSV data
    if (_csvData.isNotEmpty) {
      print('CSV Data:');
      for (final data in _csvData) {
        print(data);
      }
    }

    // Print TextField data
    if (_controllers.isNotEmpty) {
      print('TextField Data:');
      for (var i = 0; i < _controllers.length; i++) {
        print('TextField $i: ${_controllers[i].text}');
      }
    }
  }

  // Function to parse CSV data
  void _parseCSV(String csvContent) {
    setState(() {
      _csvData = csvContent.split('\n').map((line) => line.trim()).toList();
    });
  }

  // Function to load and parse a CSV file
  Future<void> _loadCSV() async {
    try {
      // Use a file picker to load the CSV file
      // For simplicity, we'll simulate loading a CSV string here
      const csvContent = '''
        JSS1 GOLD, MATHEMATICS, TEACHER 2,
        JSS3 SILVER, BIOLOGY, TEACHER 3,
      ''';

      _parseCSV(csvContent);
    } catch (e) {
      print('Error loading CSV: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Display CSV data
                if (_csvData.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _csvData.map((data) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          data,
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                  ),

                // Display TextFields
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _controllers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        controller: _controllers[index],
                        decoration: InputDecoration(
                          labelText: 'TextField $index',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _addTextField,
                child: const Text('+1'),
              ),
              ElevatedButton(
                onPressed: _loadCSV,
                child: const Text('Add CSV'),
              ),
              ElevatedButton(
                onPressed: _printValues,
                child: const Text('Print Values'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose all the controllers when the widget is disposed
    for (final controller in _controllers) {
      controller.dispose();
    }

    super.dispose();
  }
}
