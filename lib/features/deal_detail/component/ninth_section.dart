import 'package:flutter/material.dart';

class NinthSection extends StatelessWidget {
  const NinthSection({super.key});

  Widget _starsRow(int filled) {
    return Row(
      children: List.generate(5, (i) {
        return Icon(
          Icons.star,
          size: 14,
          color: i < filled ? Colors.green : Colors.grey.shade300,
        );
      }),
    );
  }

  Widget _reviewItem(int stars, String text) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/icons/woman1.png', width: 44, height: 44),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cody Fisher',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    _starsRow(stars),
                  ]),
            ),
            Text('2 days ago', style: TextStyle(color: Colors.grey.shade500)),
          ],
        ),
        const SizedBox(height: 8),
        Text(text, style: TextStyle(color: Colors.grey.shade800)),
        const SizedBox(height: 12),
        Divider(color: Colors.grey.shade300),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const lorem =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Ut enim ad minim veniam, quis nostrud exercitation.';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _reviewItem(3, lorem),
          _reviewItem(5, lorem),
        ],
      ),
    );
  }
}
