import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter Layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'), // Title
        ),
        body: const CategoryList(),
      ),
    );
  }
}

// Categories
List<String> categories = [
  'Category 1',
  'Category 2',
  'Category 3',
  'Category 4',
  'Category 5',
  'Category 6',
];

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEA4D41), // Background color
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0), // Add space at the top and bottom
        child: Column(
          children: categories.map((category) {
            return Expanded(
              child: _buildCategoryTile(category),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildCategoryTile(String category) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
      decoration: BoxDecoration(
         color: const Color(0xFFC96F67),  // Background color for each tile
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(
            fontSize: 14, // Font size
            color: Colors.white, // White text color
          ),
        ),
      ),
    );
  }
}
