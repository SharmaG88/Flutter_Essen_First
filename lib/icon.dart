import 'package:flutter/material.dart';

// Ikon Widget - Action Button with Icon + Label
class Ikon extends StatelessWidget {
  final IconData icon;
  final String label;

  const Ikon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 25, color: Colors.blue),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}

// Img Widget - Top Image
class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://www.switzerlandical.com/wp-content/uploads/2022/10/Oeschinensee-Calm-Atmosphere.webp',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}