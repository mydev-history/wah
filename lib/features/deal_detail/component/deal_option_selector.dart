import 'package:flutter/material.dart';

class DealOptionsSelector extends StatefulWidget {
  const DealOptionsSelector({super.key});

  @override
  State<DealOptionsSelector> createState() => _FifthSectionState();
}

class _FifthSectionState extends State<DealOptionsSelector> {
  int _selectedIndex = 0;

  Widget _priceText(String current, String? old) {
    return Row(
      children: [
        Text(
          current,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.deepOrange),
        ),
        const SizedBox(width: 8),
        if (old != null)
          Text(
            old,
            style: const TextStyle(
                color: Colors.grey, decoration: TextDecoration.lineThrough),
          ),
      ],
    );
  }

  Widget _buildCard({
    required bool selected,
    required VoidCallback onTap,
    required String title,
    required String currentPrice,
    String? oldPrice,
    required String desc,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 4,
                    offset: const Offset(0, 2))
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // first row: custom radio + title
                Row(
                  children: [
                    // custom radio
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color:
                                  selected ? Colors.deepOrange : Colors.grey),
                        ),
                        child: selected
                            ? Center(
                                child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepOrange)))
                            : null,
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Title
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // price row
                _priceText(currentPrice, oldPrice),
                const SizedBox(height: 8),

                // description with "View More" inline
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: desc,
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                      const TextSpan(text: ' '),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'View More',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(
                                  255, 241, 172, 68), // yellow color
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // green ribbon top-right
          Positioned(
            right: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Container(
                width: 80,
                height: 28,
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  'Buy 1 Get 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
          ),
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
          const Text('Select base Items',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          _buildCard(
            selected: _selectedIndex == 0,
            onTap: () => setState(() => _selectedIndex = 0),
            title: '3BHK Home cleaning',
            currentPrice: '\$249.00',
            oldPrice: '\$499.00',
            desc:
                'Complete deep cleaning of a 3BHK apartment including bathrooms, kitchen d...',
          ),
          const SizedBox(height: 12),
          _buildCard(
            selected: _selectedIndex == 1,
            onTap: () => setState(() => _selectedIndex = 1),
            title: '4BHK Home cleaning',
            currentPrice: '\$370.00',
            oldPrice: '\$550.00',
            desc:
                'Complete deep cleaning of a 4BHK apartment including bathrooms, kitchen d...',
          ),
        ],
      ),
    );
  }
}
