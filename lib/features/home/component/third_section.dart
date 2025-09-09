import 'package:flutter/material.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["Trending", "Popular", "Recommended", "New"];

    return Column(
      children: [
        SizedBox(
          height: 45,
          child: StatefulBuilder(
            builder: (context, setState) {
              int selectedIndex = 0;

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: isSelected
                            ? const LinearGradient(
                                colors: [Colors.red, Colors.yellow])
                            : null,
                        color: isSelected ? null : Colors.white,
                        boxShadow: [
                          if (!isSelected)
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                        ],
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: isSelected ? Colors.black : Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
