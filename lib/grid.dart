import 'package:flutter/material.dart';

class Gridviewexample extends StatelessWidget {
  const Gridviewexample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (index) => 'Items ${index + 1}');
    return Scaffold(
      appBar: AppBar(title: Text('Grid View Example')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 0.5,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) =>
            Card(child: Center(child: Text(items[index]))),
      ),
    );
  }
}
