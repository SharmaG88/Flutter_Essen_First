import 'package:flutter/material.dart';
import 'dart:math';

const image1 =
    'https://imgs.search.brave.com/9DcaUCSmcn0FK3k6JWT0aBuwN-VF2rMj6De4g48XLYo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/YWxsLXJldmVyZW5k/LWluc2FuaXR5LWFy/dC1ieS1vc290LWlu/LW9yaWdpbmFsLXF1/YWxpdHktdjAtMHhm/ODg0bnVocXBmMS5q/cGc_d2lkdGg9NjQw/JmNyb3A9c21hcnQm/YXV0bz13ZWJwJnM9/NmZlYzlkZDcxNGNi/ZjAxMmI3ODZmYzk1/OGFjNTgzNjY0YTg5/NzdmZA';
const image2 =
    'https://imgs.search.brave.com/e-yer-AUWKew5-z-X57XVQhtMpdkFK8_hus2cavI-dM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/cmV2ZXJlbmQtaW5z/YW5pdHktaGQtd2Fs/bHBhcGVyLTEtdjAt/aW5obWZ1NzJsOWxn/MS5qcGc_d2lkdGg9/NjQwJmNyb3A9c21h/cnQmYXV0bz13ZWJw/JnM9MDUxNzgxZjM5/OTdkOTVlZjJkNmMw/MjQwM2UzNjkyMDA4/N2FmNjg2MA';
const image3 = 'https://wallpaperaccess.com/full/10979347.jpg';
const image4 =
    'https://static.wikia.nocookie.net/reverend-insanity/images/1/19/Spectral_Soul_Yi_Tian_Mountain.jpg/revision/latest?cb=20260322104943';

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
        Text(label, style: TextStyle(fontSize: 15, color: Colors.lightBlue)),
      ],
    );
  }
}

// Img Widget - Top Image
class Img extends StatefulWidget {
  const Img({super.key});
  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  final imageList = [image1, image2, image3, image4];
  int index = 0;
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          imageList[index],
          width: double.infinity,
          height: 280,
          fit: BoxFit.cover,
        ),
        Positioned(
          right: 4,
          bottom: 4,
          child: ElevatedButton(
            onPressed: () {
                    setState(() {
                      index = random.nextInt(4);
                    });
                  },
            child: Text(
              '>>',
              style: TextStyle(
                backgroundColor: const Color.fromARGB(255, 251, 228, 58),
              ),
            ),
          ),
        ),
        // Positioned.fill(
        //   child: Center(
        //     child: Text(
        //       'Oeschinen Lake',
        //       style: TextStyle(fontSize: 24),
        //     ),
        //   ),
        // ),
        Positioned(
          right: 10,
          bottom: -20,
          left: 10,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, size: 50, color: Colors.amber),
            ),
          ),
        ),
        // Center( // ✅ Sab children center mein
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     decoration: BoxDecoration(
        //       color: Colors.deepOrange,
        //       shape: BoxShape.circle,
        //       image: DecorationImage(
        //         image: NetworkImage('https://static.wikia.nocookie.net/reverend-insanity/images/7/7c/Ren_zu_-_novel.jpg/revision/latest?cb=20221216221128'),
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
