import 'package:flutter/material.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  LinearGradient _buttonGradient() {
    return const LinearGradient(
      colors: [Color(0xFFFF5F6D), Color(0xFFFFC371)], // red -> yellow/amber
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: _buttonGradient(),
              borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text(
              'Add to Cart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
