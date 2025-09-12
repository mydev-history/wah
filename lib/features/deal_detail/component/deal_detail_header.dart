import 'package:flutter/material.dart';

class DealDetailHeader extends StatelessWidget {
  const DealDetailHeader({super.key});

  // Widget to display image inside a bordered box
  Widget _imageBox(String imageName) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent, // transparent inside
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.asset(
          'assets/icons/$imageName',
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              // Go back to home
              Navigator.of(context).pop();
            },
            child: const Row(
              children: [
                Icon(Icons.chevron_left),
                SizedBox(width: 4),
                Text(
                  'Wah!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              _imageBox('heart.png'),
              const SizedBox(width: 8),
              _imageBox('share.png'),
              const SizedBox(width: 8),
              _imageBox('notification.png'),
              const SizedBox(width: 8),
              _imageBox('shopping-cart.png'),
            ],
          )
        ],
      ),
    );
  }
}
