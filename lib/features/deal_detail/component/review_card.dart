import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  Widget _stars(int filled) {
    return Row(
      children: List.generate(5, (i) {
        return Icon(
          Icons.star,
          size: 16,
          color: i < filled ? Colors.green : Colors.grey.shade300,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/icons/woman1.png', width: 48, height: 48),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cody Fisher',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    _stars(5),
                  ],
                ),
              ),
              Text('2 days ago', style: TextStyle(color: Colors.grey.shade500)),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Ut enim ad minim veniam, quis nostrud exercitation.',
            style: TextStyle(color: Colors.black87),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(vertical: 12),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.grey.shade300),
                elevation: 0,
              ),
              child: const Text(
                'Edit Review',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }
}
