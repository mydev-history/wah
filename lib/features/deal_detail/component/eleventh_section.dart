import 'package:flutter/material.dart';

class EleventhSection extends StatelessWidget {
  const EleventhSection({super.key});

  final List<Map<String, String>> items = const [
    {
      'image': 'Product Image_1.png',
      'title': "Chef's Special Meal Box",
      'subtitle': 'Freshly prepared 3-course gour...',
      'current': '\$249.00',
      'old': '\$499.00',
      'redeemed': '25Redeemed'
    },
    {
      'image': 'Product Image_2.png',
      'title': "Buy 1 Get 1 on sneakers",
      'subtitle': "trendy men's & women's sneaker...",
      'current': '\$149.00',
      'old': '',
      'redeemed': '8Redeemed'
    },
    {
      'image': 'Product Image_3.png',
      'title': "Item 3",
      'subtitle': "Short description...",
      'current': '\$199.00',
      'old': '\$299.00',
      'redeemed': '12Redeemed'
    },
    {
      'image': 'Product Image_4.png',
      'title': "Item 4",
      'subtitle': "Short description...",
      'current': '\$120.00',
      'old': '\$240.00',
      'redeemed': '5Redeemed'
    },
  ];

  Widget _ratingBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(6)),
      child: const Row(
        children: [
          Icon(Icons.star, size: 14, color: Colors.white),
          SizedBox(width: 4),
          Text('4.3',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                  child: Text('You May Like',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700))),
              Text('See All',
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 260,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final it = items[index];
              return Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, blurRadius: 4)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // image area with overlays
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image.asset(
                            'assets/images/${it['image']}',
                            width: 180,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // green box top-left
                        Positioned(
                          left: 8,
                          top: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: const Text('50% OFF',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                          ),
                        ),
                        // heart circle top-right
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            padding: const EdgeInsets.all(6),
                            child: const Icon(Icons.favorite_border,
                                size: 16, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(it['title']!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          const SizedBox(height: 4),
                          Text(it['subtitle']!,
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 13)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(it['current']!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(width: 8),
                              if ((it['old'] ?? '').isNotEmpty)
                                Text(it['old']!,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              const Spacer(),
                              _ratingBox(),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(it['redeemed']!,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 97, 97, 97))),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
