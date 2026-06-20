import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (index) => 'Items ${index + 1}');
    return Scaffold(
      appBar: AppBar(title: Text('Grid View Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) =>
            Card(child: Center(child: Text(items[index]))),
      ),
    );
  }
}
