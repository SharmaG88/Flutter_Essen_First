import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();  // ← () add kiya!
}

class _TaskState extends State<Task> {  // ← _TaskState (better naming)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task Page')),
      body: Center(
        child: Text('Task Page - Work in Progress'),
      ),
    );
  }
}