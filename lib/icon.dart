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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
        'https://www.switzerlandical.com/wp-content/uploads/2022/10/Oeschinensee-Calm-Atmosphere.webp',
        height: 300,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Positioned.fill(
        child: Center(
          child: Text(
            'Oeschinen Lake',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Positioned(
        right: 10,
        bottom: -20,
        left:10,
        child: Center(
          child: IconButton(
            onPressed: (){}, 
            icon: Icon(
               Icons.favorite,
               size: 50,
               color: Colors.amber,
              ),
            ),
          ),
        ),
        Center( // ✅ Sab children center mein
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage('https://static.wikia.nocookie.net/reverend-insanity/images/7/7c/Ren_zu_-_novel.jpg/revision/latest?cb=20221216221128'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}