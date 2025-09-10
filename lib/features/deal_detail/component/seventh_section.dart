import 'package:flutter/material.dart';

class SeventhSection extends StatelessWidget {
  const SeventhSection({super.key});

  List<String> get _imgs => [
        'make an 3bhk cleaning service banner_1.png',
        'make an 3bhk cleaning service banner_2.png',
        'make an 3bhk cleaning service banner_3.png',
        'make an 3bhk cleaning service banner_4.png',
      ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const horizontalPadding = 16.0;
    const spacing = 12.0;

    // width for each image so that 4 fit on screen
    final imageWidth = (screenWidth -
            2 * horizontalPadding - // left + right padding
            3 * spacing) / // 3 gaps between 4 images
        4;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Customer Images & Videos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 110,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            scrollDirection: Axis.horizontal,
            itemCount: _imgs.length,
            separatorBuilder: (_, __) => const SizedBox(width: spacing),
            itemBuilder: (context, i) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/${_imgs[i]}',
                  width: imageWidth,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
