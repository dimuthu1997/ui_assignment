import 'package:flutter/material.dart';

class CardListScreen extends StatelessWidget {
  final List<Map<String, String>> cardData = [
    {
      'image': 'assets/images/img1.png',
      'title': 'Title 1',
      'subtitle': 'Subtitle 1',
    },
    {
      'image': 'assets/images/img2.png',
      'title': 'Title 2',
      'subtitle': 'Subtitle 2',
    },
    {
      'image': 'assets/images/img3.png',
      'title': 'Title 3',
      'subtitle': 'Subtitle 3',
    },
    {
      'image': 'assets/images/img4.png',
      'title': 'Title 4',
      'subtitle': 'Subtitle 4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card List")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...List.generate(3, (index) {
              final item = cardData[index];
              return Container(
                width: 328,
                height: 77,
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.2), // #FFFFFF33 equivalent
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Left side image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item['image']!,
                        width: 86,
                        height: 61,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Right side column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 86,
                          height: 21,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: Center(
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item['subtitle']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),

            // View All Button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // TODO: Implement navigation or show all
                  print("View All tapped");
                },
                child: const Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
