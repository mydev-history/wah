import 'package:flutter/material.dart';

class DealInfoBar extends StatelessWidget {
  const DealInfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          // Left: pill
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              'DEAL-8239',
              style: TextStyle(color: Colors.black87),
            ),
          ),

          // Spacer pushes the right part to the end
          const Spacer(),

          // Right: star + 4.5 + (41)
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.star, color: Colors.white, size: 16),
              ),
              const SizedBox(width: 8),
              const Text(
                '4.5',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                '(41)',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
