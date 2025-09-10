import 'package:flutter/material.dart';
import 'package:my_m3_app/features/deal_detail/index.dart';

class FourthSection extends StatelessWidget {
  const FourthSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "img": "assets/images/Product Image_1.png",
        "title": "Festive Home cleaning"
      },
      {
        "img": "assets/images/Product Image_2.png",
        "title": "Live Music Concert Night"
      },
      {
        "img": "assets/images/Product Image_3.png",
        "title": "Chef's Special Meal Box"
      },
      {
        "img": "assets/images/Product Image_4.png",
        "title": "Buy 1 Get 1 on Sneakers"
      },
    ];

    List<Widget> rows = [];
    for (int i = 0; i < items.length; i += 2) {
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildProductCard(
                items[i]["img"]!,
                items[i]["title"]!,
                context,
              ),
            ),
            const SizedBox(width: 12),
            if (i + 1 < items.length)
              Expanded(
                child: _buildProductCard(
                  items[i + 1]["img"]!,
                  items[i + 1]["title"]!,
                  context,
                ),
              ),
          ],
        ),
      );
      rows.add(const SizedBox(height: 12));
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: rows,
      ),
    );
  }

  Widget _buildProductCard(String imgPath, String title, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const DealDetailPage(),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    imgPath,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "50% OFF",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: Icon(Icons.favorite, color: Colors.red, size: 18),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Text(
                  "Includes kitchen, rooms & more...",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "\$50",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          "\$100",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Text("4.5", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Text(
                  "10 Purchased",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
