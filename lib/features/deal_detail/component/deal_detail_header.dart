import 'package:flutter/material.dart';

class DealDetailHeader extends StatelessWidget implements PreferredSizeWidget {
  const DealDetailHeader({super.key});

  // Widget to display image inside a bordered box
  Widget _imageBox(String imageName) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
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
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Row(
          children: [
            Icon(Icons.chevron_left, color: Colors.black),
            SizedBox(width: 4),
            Text(
              'Wah!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      actions: [
        _imageBox('heart.png'),
        const SizedBox(width: 8),
        _imageBox('share.png'),
        const SizedBox(width: 8),
        _imageBox('notification.png'),
        const SizedBox(width: 8),
        _imageBox('shopping-cart.png'),
        const SizedBox(width: 12),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
