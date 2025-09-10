import 'package:flutter/material.dart';

class SixthSection extends StatelessWidget {
  const SixthSection({super.key});

  Widget _row(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Image.asset('assets/icons/check.png', width: 20, height: 20),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text('Why hire this Vendor',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),

          // Existing rows
          _row('Insured'),
          _row('Certified'),
          _row('Wah Verified'),
          const SizedBox(height: 16),

          // New: Rating & Reviews
          const Text(
            'Rating & Reviews',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),

          // Second row: star + number + reviews + "Give Review" button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left: star + rating + count
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child:
                        const Icon(Icons.star, color: Colors.white, size: 16),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '4.3',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '(41)',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),

              // Right: "Give Review" box
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 230, 122, 51), width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Give Review',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
