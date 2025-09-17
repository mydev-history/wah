import 'package:flutter/material.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  LinearGradient _buttonGradient() {
    return const LinearGradient(
      colors: [Color(0xFFFF5F6D), Color(0xFFFFC371)], // red → amber
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 52,
      decoration: BoxDecoration(
        gradient: _buttonGradient(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: () {
          // TODO: Add your logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Add to Cart',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white, // ensure visible text
          ),
        ),
      ),
    );
  }
}
