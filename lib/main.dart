import 'package:first_app/menu.dart';
import 'package:flutter/material.dart';
// import 'homepg.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MenuPage());
  }
}