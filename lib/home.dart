import 'package:flutter/material.dart';
import 'icon.dart'; // Tera Ikon widget yahan se aa raha hai

const desc =
    'Oeschinen Lake (Oeschinensee) is a scenic alpine lake located in the Bernese Oberland of Switzerland, approximately 4 kilometres east of Kandersteg. While the area is a popular destination for hiking and nature photography, there is no official campground located directly at the lake itself. The lake is part of the Jungfrau-Aletsch-Bietschhorn UNESCO World Heritage Site and is accessible via a gondola lift from Kandersteg or a 30-minute walk. Due to the closed path on the south shore (risk of rockfall), a full circumnavigation of the lake is currently not possible. Oeschinensee Lake is a former hidden gem in Switzerland, which is slowly becoming much more popular. Where day trips during the travel season (from June to September) offer several daytime activities, an overnight stay can be equally enjoyable. Visitors pull into the valley, returning after fishing, hiking, etc. As such, Oeschinensee becomes much quieter and more peaceful at night. Letting you explore the starry night skies above the Oeschinensee or resting in your comfy hotel room. Berghotel Oeschinensee is a family-owned accommodation option for travelers looking to spend a night or two amidst nature. Built-in 1892, it is run by the fifth generation of the Wandfluh family. The hotel boasts a large panoramic terrace and 30-bed dormitory property. Berghotel rooms are made of wood to provide visitors with an exceptionally relaxing experience. They are simple and non-fancy yet spacious enough to accommodate travel groups and solo travelers. Room at Berghotel Oeschinensee Berghotel is also famous for its delicious food. The restaurant uses healthy and sustainable foods such as lamb from their organic farm in Kandersteg and home-baked bread.';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image widget (Img() from icon.dart)
            Img(),
            
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title + Rating Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Oeschinen Lake',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.red),
                          Text('41'),
                        ],
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 20),
                  
                  // Action Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Ikon(icon: Icons.call, label: 'Call'),
                      Ikon(icon: Icons.route, label: 'Route'),
                      Ikon(icon: Icons.share, label: 'Share'),
                    ],
                  ),
                  
                  SizedBox(height: 20),
                  
                  // Description Text
                  Center(
                    child: Text(
                      desc,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 20),
                  
                  // Circular Image
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/PNG_transparency_demonstration_1.png/300px-PNG_transparency_demonstration_1.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}