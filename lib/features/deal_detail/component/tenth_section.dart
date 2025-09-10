import 'package:flutter/material.dart';

class TenthSection extends StatelessWidget {
  const TenthSection({super.key});

  @override
  Widget build(BuildContext context) {
    // gradient icon color mimic red-yellow
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {},
        child: const Row(
          children: [
            Expanded(
              child: const Text(
                'View All Reviews >',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(221, 230, 76, 29)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
